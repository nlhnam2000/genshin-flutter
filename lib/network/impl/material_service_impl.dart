import 'package:flutter_core/network/custom_cancel_token.dart';
import 'package:genshin_app/device/storage_service.dart';
import 'package:genshin_app/network/abstract/material_service.dart';
import 'package:genshin_app/network/api_path.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:genshin_app/network/interceptor.dart';
import 'package:genshin_app/utils/constants.dart';

class MaterialServiceImpl implements MaterialService {
  static const tag = "MaterialServiceImpl";
  @override
  Future<GenshinDBResponseJson> getMaterialInfo(
      {CustomCancelToken? cancelToken, required String name}) async {
    final deployHost = await StorageService().get(StorageConstant.savedHost);
    return await get(
        host: deployHost ?? ApiPath.baseHost,
        path: ApiPath.getMaterialInfo,
        cancelToken: cancelToken,
        params: {
          "name": name,
        });
  }
}
