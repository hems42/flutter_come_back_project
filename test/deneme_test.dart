import 'package:flutter_come_back_project/core/constant/enum/network/core_http_request_types_enum.dart';
import 'package:flutter_come_back_project/deneme/model/signup_response_model.dart';
import 'package:flutter_come_back_project/product/init/network/concrete/dio/product_network_manager_dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

   late ProductNetworkManagerOfDio network;

 

  setUp((() {
    network = ProductNetworkManagerOfDio.instance!;
  }));

  test("get data", () async { 
    
   await network
      .send<SignupResponseModel, SignupResponseModel>(network.baseUrl+network.signUpUrl,
          type: CoreHttpRequestTypesEnum.POST,
          parseModel: SignupResponseModel())
      .then((value) => print((value.data as SignupResponseModel).toJson()));});
}
