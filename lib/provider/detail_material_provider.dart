import 'package:dio/dio.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/models/material_model.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:genshin_app/repository/abstract/material_repo.dart';
import 'package:genshin_app/repository/impl/material_repo_impl.dart';
import 'package:get/get.dart';
import 'package:flutter_core/bases/exceptions.dart';

class DetailMaterialProvider extends BaseProvider {
  BaseProviderModel<MaterialModel> _materialDetail = BaseProviderModel.init();
  BaseProviderModel<MaterialModel> get materialDetail => _materialDetail;
  final MaterialRepo materialRepo =
      Get.find<MaterialRepo>(tag: MaterialRepoImpl.tag);

  Future<void> getDetailMaterial(String name) async {
    _materialDetail = BaseProviderModel.loading();
    notifyListeners();

    try {
      MaterialModel response = await materialRepo.getMaterialInfo(name: name);
      _materialDetail = BaseProviderModel.succeed(response);
    } on DioError catch (error) {
      _materialDetail =
          BaseProviderModel.failed(ServerResponseError(error.message));
    } finally {
      notifyListeners();
    }
  }
}
