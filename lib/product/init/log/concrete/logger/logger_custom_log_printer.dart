import '../../../../../core/base/model/abstract/ife_core_base_log_model.dart';
import 'package:logger/logger.dart';

class LoggerCustomLogPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    List<String> logMessage = [];
    if (event.error != null) {
      ICoreBaseLogModel? logModel = event.error as ICoreBaseLogModel;

     
      var a = "time :- ${logModel.timeStamp}," +
          " log level :- ${logModel.logImportanceLevel.name}," +
          " log message :- ${logModel.logMessage}," +
          " log code :- ${logModel.logCode ?? "--"}," +
          "${logModel.isThrownException == true ? " error code :- ${logModel.exceptionModel?.errorCode}" : ""}" +
          "${logModel.isThrownException == true ? " error description :- ${logModel.exceptionModel?.errorDescription}" : ""}";

      logMessage.add(a);
    } else {
      var a =
          "time :- ${DateTime.now().toString()}, log level :- ${event.level.name}, log message :- ${event.message}";

      logMessage.add(a);
    }

    return logMessage;
  }
}
