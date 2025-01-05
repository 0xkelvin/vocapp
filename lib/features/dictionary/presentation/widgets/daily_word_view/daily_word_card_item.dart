import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/vocapp_theme.dart';
import '../../../../../gen/assets.gen.dart';
import 'daily_word_detail_pop_up.dart';

class DailyWordCardItem extends StatefulWidget {
  const DailyWordCardItem({super.key});

  @override
  State<DailyWordCardItem> createState() => _DailyWordCardItemState();
}

class _DailyWordCardItemState extends State<DailyWordCardItem> {
  final _isPressed = ValueNotifier<bool>(false);
  final _isHovered = ValueNotifier<bool>(false);
  final _mouseCenteredOffset = ValueNotifier<Offset>(Offset.zero);

  @override
  void dispose() {
    super.dispose();
    _isPressed.dispose();
    _isHovered.dispose();
    _mouseCenteredOffset.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) => _isHovered.value = true,
        onExit: (event) => _isHovered.value = false,
        onHover: (event) => _mouseCenteredOffset.value = Offset(
          -((constraints.maxWidth / 2) - event.localPosition.dx),
          (constraints.maxHeight / 2) - event.localPosition.dy,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => showDialog(
                context: context,
                barrierColor: Colors.transparent,
                builder: (context) => Material(
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () => AutoRouter.of(context).maybePop(),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 5,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: const DailyWordDetailPopUp(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              splashColor: context.appColor.secondaryColor.withOpacity(0.5),
              highlightColor: context.appColor.secondaryColor,
              child: Container(
                decoration: BoxDecoration(
                  color: context.appColor.neutral10.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: context.appColor.neutral10.withOpacity(0.1),
                    width: 2,
                    // strokeAlign: BorderSide.strokeAlignInside,
                  ),
                ),
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    /* Hover Effect */
                    ValueListenableBuilder<bool>(
                      valueListenable: _isHovered,
                      builder: (context, value, child) => AnimatedOpacity(
                        opacity: value ? 1 : 0,
                        duration: const Duration(milliseconds: 300),
                        child: child,
                      ),
                      child: ValueListenableBuilder<Offset>(
                        valueListenable: _mouseCenteredOffset,
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset(
                            value.dx * 0.5,
                            -value.dy * 0.5,
                          ),
                          child: child ?? const SizedBox(),
                        ),
                        child: Transform.scale(
                          scale: 1.5,
                          child: Assets.images.dictionary.cardHover.image(
                            fit: BoxFit.fill,
                            width: constraints.maxWidth,
                            height: constraints.maxHeight,
                          ),
                        ),
                      ),
                    ),

                    /* Texts */
                    Column(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'bring',
                                style: TextStyle(
                                  fontFamily: 'DM Serif Display',
                                  letterSpacing: -.25,
                                  color: context.appColor.neutral50,
                                  fontSize: 32,
                                ),
                              ),
                              Text(
                                'mang đến',
                                style: TextStyle(
                                  letterSpacing: -.25,
                                  color: context.appColor.neutral10,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: context.appColor.neutral10.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
