import 'logger_custom_utils_mixin.dart';
import 'package:logger/logger.dart';

class LoggerCustomLogFilter extends LogFilter with LoggerCustomUtilsMixin {


  @override
  bool shouldLog(LogEvent event) {
    var shouldLog = false;
    
    assert(() {
      if (event.level.index >= level!.index) {
        shouldLog = true;
      }
      return true;
    }());
    return shouldLog;
  }
}
