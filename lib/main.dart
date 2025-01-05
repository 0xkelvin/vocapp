import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/services/services_mixin.dart';
import 'core/theme/vocapp_theme.dart';
import 'i18n/translations.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(TranslationProvider(child: const MyApp()));
}

class MyApp extends StatelessWidget with ServicesMixin {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenType = layout.getScreenType(constraints.maxWidth);
      layout.setScreenType(screenType);

      return ScreenUtilInit(
        designSize: layout.screenType.designSize,
        builder: (context, child) => MaterialApp.router(
          title: 'VOCAPP',
          theme: VocappTheme.dark(),
          scaffoldMessengerKey: msg.rootScaffoldMessengerKey,
          locale: TranslationProvider.of(context).flutterLocale, // use provider
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          routeInformationParser: router.defaultRouteParser(),
          routerDelegate: router.delegate(),
          builder: (context, child) => child ?? const SizedBox(),
        ),
      );
    });
  }
}
