import '../../../../../core/base/model/abstract/ife_core_base_log_model.dart';
import 'package:logger/logger.dart';

class LoggerCustomLogPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    List<String> logMessage = [];
    if (event.error != null) {
      ICoreBaseLogModel? logModel = event.error as ICoreBaseLogModel;
      
      logMessage.add("time : ${logModel.timeStamp}");
      logMessage.add("log level : ${logModel.logImportanceLevel.name}");
      logMessage.add("log message : ${logModel.logMessage}");
      logMessage.add("log code : ${logModel.logCode ?? "--"}");
      logMessage.add(logModel.isThrownException == true ? "error code : ${logModel.exceptionModel?.errorCode}" : "");

    } else {

      logMessage.add("time : ${DateTime.now().toString()}");
      logMessage.add("log level : ${event.level.name}");
      logMessage.add("log message : ${event.message}");

    }

    return logMessage;
  }
}
