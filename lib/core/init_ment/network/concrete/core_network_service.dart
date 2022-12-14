// ignore_for_file: unused_field

/*

class NetworkService implements INetworService {
  static NetworkService? _instance;
  late final INetworkManager _manager;

  static NetworkService get instance {
    _instance ??= NetworkService._init();
    return _instance!;
  }

  NetworkService._init() {
    _manager = _selectManager(NetworkManagerTypesEnum.DIO)!;
  }

  INetworkManager? _selectManager(NetworkManagerTypesEnum types) {
    switch (types) {
      case NetworkManagerTypesEnum.DIO:
        return NetworkManagerOfDio.instance;

      default:
        return NetworkManagerOfDio.instance;
    }
  }

  @override
  Future<IBaseResponseModel<R>> fetch<R, T extends IBaseNetworkModel>(
      String path,
      {required HttpRequestTypesEnum type,
      required T parseModel,
      data,
      Map<String, Object>? queryParameters,
      void Function(int p1, int p2)? onReceiveProgress}) {
    return _manager.fetch(path, type: type, parseModel: parseModel);
  }

  @override
  Future<IBaseResponseModel<R>> fetchNoNetwork<R, T extends IBaseNetworkModel>(
      String path,
      {required HttpRequestTypesEnum type,
      required T parseModel,
      data,
      Map<String, Object>? queryParameters,
      void Function(int p1, int p2)? onReceiveProgress}) {
    return _manager.fetchNoNetwork(path, type: type, parseModel: parseModel);
  }

  @override
  Future<IBaseResponseModel<R>> send<R, T extends IBaseNetworkModel>(
      String path,
      {required HttpRequestTypesEnum type,
      required T parseModel,
      data,
      Map<String, Object>? queryParameters,
      void Function(int p1, int p2)? onReceiveProgress}) {
    return _manager.send(path, type: type, parseModel: parseModel, data: data);
  }

  // post metod

  // get metod

  // put metod

  // patch metod

  // download metod

  // refreshtoken

  // access-token

}

class NetworkManagerOfDio {
}
*/