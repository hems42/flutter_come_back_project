import 'package:flutter_come_back_project/core/base/model/abstract/ife_core_base_log_model.dart';
import 'package:flutter_come_back_project/core/constant/enum/log/core_log_levels_enum.dart';
import 'package:flutter_come_back_project/core/constant/enum/network/core_http_request_types_enum.dart';
import 'package:flutter_come_back_project/deneme/model/signup_response_model.dart';
import 'package:flutter_come_back_project/product/init/log/concrete/product_log_service.dart';
import 'package:flutter_come_back_project/product/init/network/concrete/dio/product_network_manager_dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

void main() {
  late ProductNetworkManagerOfDio network;
  late ProductLogService logger;
  late Logger lg;

  setUp((() {
    // network = ProductNetworkManagerOfDio.instance!;
    logger = ProductLogService.instance;
    lg = Logger();
  }));

  test("get data", () async {
    /*await network
        .send<SignupResponseModel, SignupResponseModel>(
            network.baseUrl + network.signUpUrl,
            type: CoreHttpRequestTypesEnum.POST,
            parseModel: SignupResponseModel())
        .then((value) => print((value.data as SignupResponseModel).toJson()));*/
  });

  test("log deneme", () {
    //logger.log(logMessage: "deneme log için yazıldı");

    logger.logWithModel(
        logModel: DenemeLogModel(
            logMessage: "logMessage",
            logImportanceLevel: CoreLogLevelEnum.TERRIBLE_FAILURE));
  });

  test("log deneme 2", () {
    lg.d("dfnkgdfgkldfg");
  });
}

class DenemeLogModel extends ICoreBaseLogModel {
  DenemeLogModel(
      {required super.logMessage, required super.logImportanceLevel});
}
