import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({
    required this.message,
    this.code = '',
  });

  final String message;
  final String code;

  @override
  List<Object?> get props => <Object?>[message, code];

  @override
  String toString() => '[$code] $message';
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    super.message = 'Oops! looks like you have connection problem',
  });
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    required super.code,
  });
}

class ClientFailure extends Failure {
  const ClientFailure({
    super.code = 'CF404',
    String? message,
  }) : super(
          message: message ??
              'Oops! Client error: $code. '
                  'Report to support centre. ',
        );
}
