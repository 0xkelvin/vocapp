import 'dart:math';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/theme/vocapp_theme.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../domain/entities/dictionary_item/dictionary_item.dart';
import 'daily_word_detail_pop_up.dart';

class DailyWordCardItem extends StatefulWidget {
  const DailyWordCardItem({
    super.key,
    required this.dictionaryItem,
    this.showAsSkeleton = false,
  });

  final DictionaryItem dictionaryItem;
  final bool showAsSkeleton;

  @override
  State<DailyWordCardItem> createState() => _DailyWordCardItemState();
}

class _DailyWordCardItemState extends State<DailyWordCardItem> {
  final _isHovered = ValueNotifier<bool>(false);
  final _mouseCenteredOffset = ValueNotifier<Offset>(Offset.zero);

  @override
  void dispose() {
    super.dispose();
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
                          child: DailyWordDetailPopUp(
                            dictionaryItem: widget.dictionaryItem,
                          ),
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
                                widget.dictionaryItem.wordTo.word,
                                style: TextStyle(
                                  fontFamily: 'DM Serif Display',
                                  letterSpacing: -.25,
                                  color: context.appColor.neutral50,
                                  fontSize: 32,
                                ),
                              ),
                              Text(
                                widget.dictionaryItem.wordFrom.word,
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
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: context.appColor.neutral10.withOpacity(0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                FontAwesomeIcons.bookmark,
                                size: 18,
                                color: context.appColor.secondaryColor,
                              ),
                              const SizedBox(width: 12),
                              Icon(
                                FontAwesomeIcons.solidTrashCan,
                                size: 18,
                                color: context.appColor.secondaryColor,
                              ),
                              const SizedBox(width: 12),
                              Icon(
                                FontAwesomeIcons.volumeLow,
                                size: 18,
                                color: context.appColor.neutral30,
                              ),
                            ],
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

class DailyWordCardLoading extends StatelessWidget {
  const DailyWordCardLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Skeletonizer(
          effect: const ShimmerEffect(),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Opacity(
                    opacity: 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          BoneMock.chars(Random().nextInt(6) + 3),
                          style: const TextStyle(fontSize: 32),
                        ),
                        Text(
                          BoneMock.chars(Random().nextInt(9) + 5),
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: constraints.maxWidth,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: context.appColor.neutral10.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DailyWordCardError extends StatelessWidget {
  final VoidCallback? onRetry;

  const DailyWordCardError({super.key, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            color: context.appColor.neutral10,
            size: 48,
          ),
          const SizedBox(height: 16),
          Text(
            'Oops! Something went wrong.',
            style: TextStyle(
              fontSize: 18,
              color: context.appColor.neutral10,
            ),
          ),
          const SizedBox(height: 8),
          if (onRetry != null)
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('Retry'),
            ),
        ],
      ),
    );
  }
}

class DailyWordCardEmpty extends StatelessWidget {
  const DailyWordCardEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.inbox,
            color: context.appColor.neutral10,
            size: 48,
          ),
          const SizedBox(height: 16),
          Text(
            'No words available today.',
            style: TextStyle(
              fontSize: 18,
              color: context.appColor.neutral10,
            ),
          ),
        ],
      ),
    );
  }
}
