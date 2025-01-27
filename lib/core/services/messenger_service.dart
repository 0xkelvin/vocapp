import 'dart:async';

import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';

import '../../components/utils/snackbar_utils.dart';

abstract class Messenger {
  /* GlobalKey to be used in root snackbar */
  abstract final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey;

  /* Show loading indicator */
  Future<T?> showLoading<T>(
    BuildContext context, {
    required Completer<T> completer,
    Widget? loadingWidget,
  });

  /* Show dialog */
  Future<T?> showDialog<T>(
    BuildContext context, {
    AlertDialog? customDialog,
    String? title,
    Widget? content,
    List<Widget>? Function(Future<void> Function() dismisser)? actionBuilder,
  });

  /* Show snackbar using context */
  Future<T?> showSnackBar<T>(
    BuildContext context, {
    required String title,
    required SnackBarVariant variant,
    String? subtitle,
    Widget? Function(Future<void> Function() dismisser)? actionBuilder,
    Duration duration = const Duration(seconds: 4),
    EdgeInsets margin = const EdgeInsets.all(20),
    SnackBarPosition position = SnackBarPosition.bottom,
  });

  /* Show snackbar using root messenger key  */
  void showRootSnackBar({
    required String message,
    Duration duration = const Duration(seconds: 4),
  });
}

class MessengerService implements Messenger {
  MessengerService._();
  static final MessengerService _instance = MessengerService._();
  factory MessengerService() => _instance;

  @override
  Future<T?> showLoading<T>(
    BuildContext context, {
    required Completer<T> completer,
    Widget? loadingWidget,
    bool tapToDismiss = false,
  }) {
    if (!context.mounted) return Future.value();

    return context.showModalFlash<T>(
      barrierBlur: 5,
      barrierColor: Colors.black12,
      barrierDismissible: false,
      builder: (context, controller) {
        completer.future.then((_) => controller.dismiss());
        return LayoutBuilder(
          builder: (context, constraints) => tapToDismiss
              ? GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => controller.dismiss(),
                  child: SizedBox(
                    width: constraints.hasBoundedWidth
                        ? constraints.maxWidth
                        : null,
                    height: constraints.hasBoundedHeight
                        ? constraints.maxHeight
                        : null,
                    child: _LoadingWidget(
                      controller: controller,
                      customLoadingWidget: loadingWidget,
                    ),
                  ),
                )
              : _LoadingWidget(
                  controller: controller,
                  customLoadingWidget: loadingWidget,
                ),
        );
      },
    );
  }

  @override
  Future<T?> showDialog<T>(
    BuildContext context, {
    AlertDialog? customDialog,
    String? title,
    Widget? content,
    List<Widget>? Function(Future<void> Function() dismisser)? actionBuilder,
  }) {
    if (!context.mounted) return Future.value();

    return context.showFlash(
      barrierBlur: 5,
      barrierDismissible: true,
      barrierColor: Colors.black12,
      builder: (context, controller) => FadeTransition(
        opacity: controller.controller,
        child: customDialog ??
            AlertDialog(
              title: Text(title ?? ''),
              content: content,
              actions: actionBuilder?.call(controller.dismiss),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
      ),
    );
  }

  @override
  Future<T?> showSnackBar<T>(
    BuildContext context, {
    required String title,
    required SnackBarVariant variant,
    String? subtitle,
    Widget? Function(Future<void> Function() dismisser)? actionBuilder,
    bool persistent = true,
    Duration duration = const Duration(seconds: 4),
    EdgeInsets margin = const EdgeInsets.all(20),
    SnackBarPosition position = SnackBarPosition.bottom,
  }) {
    if (!context.mounted) return Future.value();

    return context.showFlash<T>(
      duration: duration,
      persistent: persistent,
      builder: (context, controller) {
        return FlashBar(
          controller: controller,
          behavior: FlashBehavior.floating,
          primaryAction: actionBuilder?.call(controller.dismiss),
          backgroundColor: variant.backgroundColor,
          position: position == SnackBarPosition.top
              ? FlashPosition.top
              : FlashPosition.bottom,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          margin: EdgeInsets.only(
            top: margin.top,
            bottom: margin.bottom,
            left: margin.left,
            right: margin.right,
          ),
          title: subtitle == null
              ? null
              : Text(
                  title,
                  style: TextStyle(color: variant.textColor),
                ),
          content: Text(
            subtitle ?? title,
            style: TextStyle(color: variant.textColor),
          ),
        );
      },
    );
  }

  @override
  final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  void showRootSnackBar({
    required String message,
    Duration duration = const Duration(seconds: 4),
    EdgeInsets margin = const EdgeInsets.all(20),
  }) {
    if (rootScaffoldMessengerKey.currentState != null) {
      rootScaffoldMessengerKey.currentState
        ?..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            elevation: 0,
            duration: duration,
            content: Text(message),
            behavior: SnackBarBehavior.floating,
            dismissDirection: DismissDirection.horizontal,
            margin: EdgeInsets.only(
              top: margin.top,
              bottom: margin.bottom,
              left: margin.left,
              right: margin.right,
            ),
          ),
        );
    }
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget({
    required this.customLoadingWidget,
    required this.controller,
  });

  final Widget? customLoadingWidget;
  final FlashController controller;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: controller.controller,
      child: Align(
        child: customLoadingWidget ??
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).dialogBackgroundColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: const CircularProgressIndicator(),
            ),
      ),
    );
  }
}
