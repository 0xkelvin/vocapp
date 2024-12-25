import '../services/messenger_service.dart';

mixin ServicesMixin {
  static final _messenger = MessengerService();

  MessengerService get msg => _messenger;
}

mixin MessengerServiceMixin {
  static final _messenger = MessengerService();

  MessengerService get msg => _messenger;
}
