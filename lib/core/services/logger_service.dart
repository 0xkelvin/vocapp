import 'package:logger/logger.dart';

class LoggerService {
  LoggerService._();
  static final LoggerService _instance = LoggerService._();
  factory LoggerService() => _instance;

  final Logger _logger = Logger(
    printer: PrettyPrinter(
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
  );

  void trace(String message, {String? type}) {
    _logger.t(type != null ? '[$type] $message' : message);
  }

  void debug(String message, {String? type}) {
    _logger.d(type != null ? '[$type] $message' : message);
  }

  void info(String message, {String? type}) {
    _logger.i(type != null ? '[$type] $message' : message);
  }

  void warn(String message, {String? type}) {
    _logger.w(type != null ? '[$type] $message' : message);
  }

  void error(
    String message, {
    dynamic error,
    StackTrace? stackTrace,
    String? type,
  }) {
    _logger.e(
      type != null ? '[$type] $message' : message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  void fatal(
    String message, {
    dynamic error,
    StackTrace? stackTrace,
    String? type,
  }) {
    _logger.f(
      type != null ? '[$type] $message' : message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  void setLogLevel(Level level) {
    Logger.level = level;
  }
}
