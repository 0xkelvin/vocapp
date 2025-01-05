import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/theme/vocapp_theme.dart';

class DailyWordDetailPopUp extends StatelessWidget {
  const DailyWordDetailPopUp({
    super.key,
  });

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
          const Expanded(child: _LeftSide()),
          VerticalDivider(
            color: context.appColor.neutral20,
            width: 56,
          ),
          const Expanded(child: _RightSide()),
        ],
      ),
    );
  }
}

class _LeftSide extends StatelessWidget {
  const _LeftSide();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /* Title */
        Row(
          children: [
            Text(
              'hello',
              style: TextStyle(
                fontFamily: 'DM Serif Display',
                color: context.appColor.secondaryColor,
                fontSize: 32,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              '/həˈləʊ/',
              style: TextStyle(
                color: context.appColor.neutral30,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              FontAwesomeIcons.volumeLow,
              color: context.appColor.secondaryColor,
              size: 18,
            )
          ],
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
        const Align(
          alignment: Alignment.centerRight,
          child: _Button(text: 'Save'),
        )
      ],
    );
  }
}

class _RightSide extends StatefulWidget {
  const _RightSide();

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
              text: 'English',
              isActive: _tabController.index == 0,
              onPressed: () => _tabController.animateTo(0),
            ),
            const SizedBox(width: 8),
            _Button(
              text: 'Vietnamese',
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
                (index) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView(
                    children: [
                      Text(
                        'Exclamation',
                        style: TextStyle(
                          color: context.appColor.neutral50,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.25,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'used as a greeting or to begin a phone conversation.',
                        style: TextStyle(
                          color: context.appColor.neutral50,
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'e.g. “hello there, Katie!”',
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
                      Text(
                        'Exclamation',
                        style: TextStyle(
                          color: context.appColor.neutral50,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.25,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'used as a greeting or to begin a phone conversation.',
                        style: TextStyle(
                          color: context.appColor.neutral50,
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'e.g. “hello there, Katie!”',
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
                      Text(
                        'Exclamation',
                        style: TextStyle(
                          color: context.appColor.neutral50,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.25,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'used as a greeting or to begin a phone conversation.',
                        style: TextStyle(
                          color: context.appColor.neutral50,
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'e.g. “hello there, Katie!”',
                        style: TextStyle(
                          color: context.appColor.neutral30,
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  void _tabIndexListener() {
    setState(() {});
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
