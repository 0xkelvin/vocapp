import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../components/ui/coming_soon_dialog.dart';
import '../../../../../core/theme/vocapp_theme.dart';
import '../../../domain/entities/dictionary_item/dictionary_item.dart';
import '../../../domain/entities/enums/languange_type.dart';

class DailyWordDetailPopUp extends StatelessWidget {
  const DailyWordDetailPopUp({super.key, required this.dictionaryItem});

  final DictionaryItem dictionaryItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      constraints: const BoxConstraints(
        maxWidth: 1056,
        maxHeight: 544,
      ),
      decoration: BoxDecoration(
        color: context.appColor.neutral10,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(child: _LeftSide(dictionaryItem: dictionaryItem)),
          VerticalDivider(
            color: context.appColor.neutral20,
            width: 56,
          ),
          Expanded(child: _RightSide(dictionaryItem: dictionaryItem)),
        ],
      ),
    );
  }
}

class _LeftSide extends StatelessWidget {
  const _LeftSide({
    required this.dictionaryItem,
  });

  final DictionaryItem dictionaryItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /* Title */
        Row(
          children: [
            Text(
              dictionaryItem.wordTo.word,
              style: TextStyle(
                fontFamily: 'DM Serif Display',
                color: context.appColor.secondaryColor,
                fontSize: 32,
              ),
            ),
            const SizedBox(width: 12),
            if (dictionaryItem.wordTo.pronunciation != null)
              Row(
                children: [
                  Text(
                    dictionaryItem.wordTo.pronunciation ?? '',
                    style: TextStyle(
                      color: context.appColor.neutral30,
                      fontSize: 16,
                    ),
                  ),
                  IconButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          const ComingSoonDialog(),
                    ),
                    icon: Icon(
                      FontAwesomeIcons.volumeLow,
                      color: context.appColor.secondaryColor,
                      size: 18,
                    ),
                  )
                ],
              )
          ],
        ),
        Text(
          dictionaryItem.wordFrom.word,
          style: TextStyle(
            color: context.appColor.neutral40,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),

        /* Defintion */
        Text(
          'Definition',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: context.appColor.neutral100,
            letterSpacing: -0.25,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: context.appColor.neutral10,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: context.appColor.neutral20, width: 0.75),
          ),
          child: TextFormField(
            style: TextStyle(
              color: context.appColor.neutral40,
              fontSize: 14,
            ),
            minLines: 10,
            maxLines: 14,
            decoration: InputDecoration(
              hintText: 'Enter your defintion',
              hintStyle: TextStyle(
                color: context.appColor.neutral40,
                fontSize: 14,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(height: 16),

        /* Save Button */
        Align(
          alignment: Alignment.centerRight,
          child: _Button(
            text: 'Save',
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => const ComingSoonDialog(),
            ),
          ),
        )
      ],
    );
  }
}

class _RightSide extends StatefulWidget {
  const _RightSide({required this.dictionaryItem});

  final DictionaryItem dictionaryItem;

  @override
  State<_RightSide> createState() => _RightSideState();
}

class _RightSideState extends State<_RightSide>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this)
      ..addListener(_tabIndexListener);
  }

  @override
  void dispose() {
    _tabController.removeListener(_tabIndexListener);
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /* Title */
        Row(
          children: [
            Expanded(
              child: Text(
                'From Dictionary',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: context.appColor.neutral100,
                  letterSpacing: -0.25,
                ),
              ),
            ),
            IconButton(
              onPressed: () => AutoRouter.of(context).maybePop(),
              icon: Icon(
                Icons.close,
                color: context.appColor.neutral40,
              ),
            )
          ],
        ),
        const SizedBox(height: 12),

        /* Tab Button */
        Row(
          children: [
            _Button(
              text: LanguangeType.fromLocaleCode(widget.dictionaryItem.langTo)
                      ?.nameWithFlag ??
                  '',
              isActive: _tabController.index == 0,
              onPressed: () => _tabController.animateTo(0),
            ),
            const SizedBox(width: 8),
            _Button(
              text: LanguangeType.fromLocaleCode(widget.dictionaryItem.langFrom)
                      ?.nameWithFlag ??
                  '',
              isActive: _tabController.index == 1,
              onPressed: () => _tabController.animateTo(1),
            ),
          ],
        ),
        const SizedBox(height: 16),

        /* TabView */
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: context.appColor.neutral20.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: TabBarView(
              controller: _tabController,
              children: List.generate(
                2,
                (index) {
                  final word = index == 0
                      ? widget.dictionaryItem.wordTo
                      : widget.dictionaryItem.wordFrom;
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: ListView(
                      children: word.details
                          .map((element) => _WordDetails(detail: element))
                          .toList(),
                    ),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }

  void _tabIndexListener() => setState(() {});
}

class _WordDetails extends StatelessWidget {
  const _WordDetails({
    required this.detail,
  });

  final DictionaryWordDetail detail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          detail.type,
          style: TextStyle(
            color: context.appColor.neutral50,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.25,
            fontSize: 16,
          ),
        ),
        Text(
          detail.description,
          style: TextStyle(
            color: context.appColor.neutral50,
            fontWeight: FontWeight.w300,
            fontSize: 16,
          ),
        ),
        if (detail.example != null)
          Text(
            detail.example ?? '',
            style: TextStyle(
              color: context.appColor.neutral30,
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
          ),
        Divider(
          height: 40,
          color: context.appColor.neutral20,
        ),
      ],
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.text,
    this.isActive = true,
    this.onPressed,
  });

  final String text;
  final bool isActive;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          isActive ? context.appColor.primaryColor : context.appColor.neutral10,
        ),
        side: WidgetStatePropertyAll(
          BorderSide(
            color: isActive ? Colors.transparent : context.appColor.neutral20,
          ),
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isActive
              ? context.appColor.neutral100
              : context.appColor.neutral40,
          fontSize: 16,
        ),
      ),
    );
  }
}
