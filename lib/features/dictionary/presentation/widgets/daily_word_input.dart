import 'package:flutter/material.dart';

import '../../../../components/ui/coming_soon_dialog.dart';
import '../../../../core/theme/vocapp_theme.dart';
import '../../../../gen/assets.gen.dart';

class DailyWordInput extends StatelessWidget {
  const DailyWordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: Assets.images.backgrounds.darkUpperBg.provider(),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /* Title */
          const Text(
            '✍🏻 Input your words today',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 8,
          ),

          /* TextBox */
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: context.appColor.neutral10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type your word here...',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: context.appColor.neutral30,
                      ),
                    ),
                    style: TextStyle(
                      color: context.appColor.neutral100,
                      fontSize: 16,
                    ),
                  ),
                ),
                const AddButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) => const ComingSoonDialog(),
      ),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          context.appColor.primaryColor,
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: Text(
        '+ Add Word',
        style: TextStyle(
          color: context.appColor.neutral100,
          fontSize: 16,
        ),
      ),
    );
  }
}
