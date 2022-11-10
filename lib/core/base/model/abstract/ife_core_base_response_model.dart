// ignore_for_file: non_constant_identifier_names

import 'ife_core_base_error_model.dart';

abstract class ICoreBaseResponseModel<T> {
  bool _success;
  T? _data;
  ICoreBaseErrorModel? _error;

  ICoreBaseResponseModel(this._success, {T? data, ICoreBaseErrorModel? error}) {
    data != null ? _data = data : _data = null;
    error != null ? _error = error : _error = null;
  }

  bool get success => _success;

  set success(bool success) {
    _success = success;
  }

  get data => _data;

  get error => _error;
}
