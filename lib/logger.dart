import 'package:logger/logger.dart';

final _logger = Logger(
  level: Level.all,
  filter: DevelopmentFilter(),
  printer: PrettyPrinter(
    colors: true,
    printEmojis: true,
    printTime: true,
    methodCount: 0,
    errorMethodCount: 3,
  ),
);

mixin LoggerMixin {
  Logger get log => _logger;
  static Logger get logger => _logger;

  /// Filter using XXXX for easy
  void debugXXXX(String message) {
    log.d("DEBUG-XXXX: $message");
  }

  static void debugXXXXX(String message, {bool error = false}) {
    if (error) {
      logger.e("DEBUG-XXXXX: $message");
      return;
    }
    logger.d("DEBUG-XXXXX: $message");
  }
}
