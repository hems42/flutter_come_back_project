import '../../../constant/enum/exception/core_exception_event_types_enum.dart';

abstract class ICoreBaseExceptionModel {
  late String _timeStamp;
  late String _errorTopicCode;
  late String _errorDetailCode;
  late String _errorMessage;
  late String _errorDescription;
  late String _baseErrorCode;
  late String _baseStatusCode;
  late CoreExceptionEventTypes _exceptionEventType;

  ICoreBaseExceptionModel(CoreExceptionEventTypes exceptionEventType,
      {required String baseErrorCode,
      required String errorDetailCode,
      required String errorDescription,
      required String baseStatusCode}) {
    _exceptionEventType = exceptionEventType;
    _errorTopicCode = exceptionEventType.exceptionCode;
    _errorMessage = exceptionEventType.exceptionMessage;
    _errorDescription = errorDescription;
    _baseErrorCode = baseErrorCode;
    _errorDetailCode = errorDetailCode;
    _baseStatusCode = baseStatusCode;
    _timeStamp = DateTime.now().toString();
  }

  String get timeStamp => _timeStamp;

  String? get errorCode => _convertToSuperErrorCode();

  String? get errorMessage => _errorMessage;

  String? get errorDescription => _errorDescription;

  String? get statusCode => _baseStatusCode;

  CoreExceptionEventTypes get exceptionEventType => _exceptionEventType;

  String _convertToSuperErrorCode() {
    return _baseErrorCode + _errorTopicCode + _errorDetailCode;
  }

  @override
  String toString() {
    return """
              errorTopicCode   : $_errorTopicCode  
              errorDetailCode  : $_errorDetailCode
              errorMessage     : $_errorMessage
              errorDescription : $_errorDescription
              baseErrorCode    : $_baseErrorCode
              baseStatusCode   : $_baseStatusCode
              errorCode        : $errorCode
    """;
  }
}
