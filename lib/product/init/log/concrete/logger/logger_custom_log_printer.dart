import '../../../../../core/base/model/abstract/ife_core_base_log_model.dart';
import 'package:logger/logger.dart';

class LoggerCustomLogPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    List<String> logMessage = [];
    if (event.error != null) {
      ICoreBaseLogModel? logModel = event.error as ICoreBaseLogModel;

      // ignore: unrelated_type_equality_checks
      var a = "time :- ${logModel.timeStamp}," +
          " log level :- ${logModel.logImportanceLevel.name}," +
          " log message :- ${logModel.logMessage}," +
          " log code :- ${logModel.logCode ?? "--"}," +
          "${logModel.isThrownException == true ? " error code :- ${logModel.exceptionModel?.errorCode}" : ""}";

      /*logMessage.add("time : ${logModel.timeStamp}");
      logMessage.add("log level : ${logModel.logImportanceLevel.name}");
      logMessage.add("log message : ${logModel.logMessage}");
      logMessage.add("log code : ${logModel.logCode ?? "--"}");
      logMessage.add(logModel.isThrownException == true
          ? "error code : ${logModel.exceptionModel?.errorCode}"
          : "");*/

      logMessage.add(a);
    } else {
      var a =
          "time :- ${DateTime.now().toString()}, log level :- ${event.level.name}, log message :- ${event.message}";

      /* logMessage.add("time : ${DateTime.now().toString()}");
      logMessage.add("log level : ${event.level.name}");
      logMessage.add("log message : ${event.message}");*/
      logMessage.add(a);
    }

    return logMessage;
  }
}
