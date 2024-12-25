import '../../components/utils/layout_utils.dart';
import '../services/messenger_service.dart';
import 'layout_service.dart';
import 'logger_service.dart';

mixin ServicesMixin {
  static final _layout = LayoutService();
  static final _logger = LoggerService();
  static final _messenger = MessengerService();

  LoggerService get log => _logger;
  LayoutService get layout => _layout;
  MessengerService get msg => _messenger;

  DeviceScreenType get screenType => layout.screenType;
}

mixin LayoutServiceMixin {
  static final _layout = LayoutService();
  LayoutService get layout => _layout;
  DeviceScreenType get screenType => _layout.screenType;
}

mixin LoggerServiceMixin {
  static final _logger = LoggerService();

  LoggerService get msg => _logger;
}

mixin MessengerServiceMixin {
  static final _messenger = MessengerService();

  MessengerService get msg => _messenger;
}
