import 'package:flutter/material.dart';

import '../../core/theme/vocapp_theme.dart';

class ComingSoonDialog extends StatelessWidget {
  const ComingSoonDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      contentPadding: const EdgeInsets.all(24),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Icon
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: context.appColor.secondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.access_time_rounded,
              size: 48,
              color: context.appColor.secondaryColor,
            ),
          ),
          const SizedBox(height: 24),

          // Title
          const Text(
            'Coming Soon!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Description
          const Text(
            'This feature is under development and will be available soon.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: context.appColor.primaryColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12,
            ),
          ),
          child: Text(
            'Got it',
            style: TextStyle(color: context.appColor.neutral100),
          ),
        ),
      ],
    );
  }
}
