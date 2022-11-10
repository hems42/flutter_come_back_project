import '../../static/exception/core_exception_error_code_statics.dart';

enum CoreExceptionEventTypes {
  //AUTHENTICATION***

  // ACCESS TOKEN
  NOT_VALID_ACCESS_TOKEN(
      "NOT_VALID_ACCESS_TOKEN", CoreExceptionErrorCodeCostants.T_ACCESS_TOKEN),

  //LOGIN
  UN_SUCCESSFUL_RENEW_REFRESH_TOKEN("UN_SUCCESSFUL_RENEW_REFRESH_TOKEN",
      CoreExceptionErrorCodeCostants.T_REFRESH_TOKEN),

  //REGISTRATION
  UN_SUCCESSFUL_REGISTRATION(
      "UN_SUCCESSFUL_REGISTRATION", CoreExceptionErrorCodeCostants.T_REGISTRATION),

  //SIGNUP
  UN_SUCCESSFUL_SIGNUP(
      "UN_SUCCESSFUL_SIGNUP", CoreExceptionErrorCodeCostants.T_SIGNUP),

  //LOGIN
  UN_SUCCESSFUL_LOGIN(
      "UN_SUCCESSFUL_LOGIN", CoreExceptionErrorCodeCostants.T_LOGIN);

  final String exceptionMessage;
  final String exceptionCode;

  const CoreExceptionEventTypes(this.exceptionMessage, this.exceptionCode);

  String get toErrorCode => exceptionCode;
  String get toErrorName => exceptionMessage;
}
