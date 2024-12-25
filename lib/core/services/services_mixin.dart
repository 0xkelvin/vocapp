import '../services/messenger_service.dart';
import 'logger_service.dart';

mixin ServicesMixin {
  static final _messenger = MessengerService();
  static final _logger = LoggerService();

  MessengerService get msg => _messenger;
  LoggerService get log => _logger;
}

mixin LoggerServiceMixin {
  static final _logger = LoggerService();

  LoggerService get msg => _logger;
}

mixin MessengerServiceMixin {
  static final _messenger = MessengerService();

  MessengerService get msg => _messenger;
}
