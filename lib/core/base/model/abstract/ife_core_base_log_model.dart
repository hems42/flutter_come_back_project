import 'ife_core_base_exception_model.dart';
import '../../../constant/enum/log/core_log_levels_enum.dart';

abstract class ICoreBaseLogModel<T> {
  late T? _data;
  late String _timeStamp;
  late String _logMessage;
  late String? _logCode;
  late bool _isThrownException;
  late CoreLogLevelEnum _logImportanceLevel;
  late ICoreBaseExceptionModel? _exceptionModel;

  ICoreBaseLogModel(
      {required String logMessage,
      String? logCode,
      bool isThrownException = false,
      required CoreLogLevelEnum logImportanceLevel,
      ICoreBaseExceptionModel? exceptionModel}) {
    _logMessage = logMessage;
    _logCode = logCode;
    _isThrownException = isThrownException;
    _logImportanceLevel = logImportanceLevel;
    _exceptionModel = exceptionModel;
    _timeStamp = DateTime.now().toString();
  }

  String get timeStamp => _timeStamp;
  String get logMessage => _logMessage;
  String? get logCode => _logCode;
  bool get isThrownException =>  _isThrownException;
  CoreLogLevelEnum get logImportanceLevel => _logImportanceLevel;
  ICoreBaseExceptionModel? get exceptionModel => _exceptionModel;
  T? get data => _data;
  set attachData(T data) => _data = data;
}
