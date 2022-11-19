import '../../../../core/constant/enum/log/core_to_log_types_enum.dart';
import '../../../../core/constant/enum/log/core_log_levels_enum.dart';
import '../../../../core/base/model/abstract/ife_core_base_log_model.dart';
import '../abstract/ife_product_log_service.dart';

class ProductLogService implements IProductLogService {
  @override
  log(CoreLogLevelEnum logLevel, String logMessage, {CoreToLogTypesEnum? toLogTypes}) {
    // TODO: implement log
    throw UnimplementedError();
  }

  @override
  logWithModel(CoreLogLevelEnum logLevel, ICoreBaseLogModel logModel, {CoreToLogTypesEnum? toLogTypes}) {
    // TODO: implement logWithModel
    throw UnimplementedError();
  }
}
