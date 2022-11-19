abstract class ICoreBaseLogModel<T> {
   late String _timeStamp;
  late String _logMessage;
  late String _logCode;
  late String _errorMessage;
  late String _errorDescription;
  late String _baseErrorCode;

 
  String get timeStamp => _timeStamp;

  String? get errorCode => _convertToSuperErrorCode();

  String? get errorMessage => _errorMessage;

  String? get errorDescription => _errorDescription;


  String _convertToSuperErrorCode() {
    return _baseErrorCode + _logCode + _logMessage;
  }

}