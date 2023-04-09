import 'package:genshin_app/models/material_model.dart';
import 'package:flutter_core/network/custom_cancel_token.dart';
import 'package:genshin_app/network/abstract/material_service.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:genshin_app/network/impl/material_service_impl.dart';
import 'package:genshin_app/repository/abstract/material_repo.dart';
import 'package:get/get.dart';

class MaterialRepoImpl implements MaterialRepo {
  static const tag = "MaterialRepoImpl";
  final materialService =
      Get.find<MaterialService>(tag: MaterialServiceImpl.tag);
  @override
  Future<MaterialModel> getMaterialInfo(
      {required String name, CustomCancelToken? cancelToken}) async {
    GenshinDBResponseJson response = await materialService.getMaterialInfo(
        name: name, cancelToken: cancelToken);

    return MaterialModel.fromJson(response.content!);
  }
}
