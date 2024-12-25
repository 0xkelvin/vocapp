import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../components/utils/snackbar_utils.dart';
import '../../../../core/services/services_mixin.dart';
import '../../../../i18n/translations.g.dart';

@RoutePage()
class HomeScreen extends StatelessWidget with ServicesMixin {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('VOCAPP-Home')),
      body: Center(
        child: Column(
          children: [
            /* Locale Test */
            Text(
              context.t.general.hello(name: 'name123'),
            ),
            ElevatedButton(
              onPressed: () => LocaleSettings.setLocale(AppLocale.en),
              child: const Text('en'),
            ),
            ElevatedButton(
              onPressed: () => LocaleSettings.setLocale(AppLocale.vi),
              child: const Text('vi'),
            ),

            /* Snackbar Test */
            ElevatedButton(
              onPressed: () => msg.showRootSnackBar(message: 'Hello, World!'),
              child: const Text('Root SB'),
            ),
            ElevatedButton(
              onPressed: () => msg.showSnackBar(
                context,
                title: 'Test',
                variant: SnackBarVariant.success,
              ),
              child: const Text('SB'),
            ),
            ElevatedButton(
              onPressed: () async {
                final completer = Completer();
                unawaited(
                  Future.delayed(
                    const Duration(seconds: 2),
                    () => completer.complete(),
                  ),
                );
                unawaited(msg.showLoading(
                  context,
                  completer: completer,
                  tapToDismiss: true,
                ));
              },
              child: const Text('Loading'),
            ),
            ElevatedButton(
              onPressed: () => msg.showDialog(context, title: 'Test'),
              child: const Text('Dialog'),
            ),

            /* Logger Test */
            ElevatedButton(
              onPressed: () => log.trace('trace', type: 'Testing'),
              child: const Text(
                'trace',
              ),
            ),
            ElevatedButton(
              onPressed: () => log.debug('debug', type: 'Testing'),
              child: const Text(
                'debug',
              ),
            ),
            ElevatedButton(
              onPressed: () => log.info('info', type: 'Testing'),
              child: const Text(
                'info',
              ),
            ),
            ElevatedButton(
              onPressed: () => log.warn('warn', type: 'Testing'),
              child: const Text(
                'warn',
              ),
            ),
            ElevatedButton(
              onPressed: () => log.error('error', type: 'Testing'),
              child: const Text(
                'error',
              ),
            ),
            ElevatedButton(
              onPressed: () => log.fatal('fatal', type: 'Testing'),
              child: const Text(
                'fatal',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
