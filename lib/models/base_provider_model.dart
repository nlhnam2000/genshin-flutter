import 'package:genshin_app/provider/base_provider.dart';

class BaseProviderModel<T> {
  T? data;
  ViewStatus? viewStatus;
  String? errorMessage;

  BaseProviderModel({this.data, this.viewStatus, this.errorMessage});

  factory BaseProviderModel.init({T? data}) {
    return BaseProviderModel(data: data, viewStatus: ViewStatus.init);
  }

  factory BaseProviderModel.loading() {
    return BaseProviderModel(viewStatus: ViewStatus.loading);
  }

  factory BaseProviderModel.succeed(T data) {
    return BaseProviderModel(data: data, viewStatus: ViewStatus.succeed);
  }

  factory BaseProviderModel.failed(Exception error) {
    return BaseProviderModel(errorMessage: error.toString());
  }
}

enum ViewStatus { loading, succeed, failed, init }
