import 'package:flutter/material.dart';

import '../../core/theme/vocapp_theme.dart';

class VocappCard extends StatelessWidget {
  const VocappCard({
    super.key,
    required this.child,
    this.height,
    this.onTap,
    this.showBorder = false,
  });

  final double? height;
  final bool showBorder;
  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: height,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: context.appColor.backgroundSecondary,
          border: showBorder
              ? Border.all(
                  color: context.appColor.neutral40,
                  width: 1.6,
                )
              : null,
        ),
        child: child,
      ),
    );
  }
}
