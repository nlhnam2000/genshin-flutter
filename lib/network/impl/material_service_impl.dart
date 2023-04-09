import 'package:flutter_core/network/custom_cancel_token.dart';
import 'package:genshin_app/network/abstract/material_service.dart';
import 'package:genshin_app/network/api_path.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:genshin_app/network/interceptor.dart';

class MaterialServiceImpl implements MaterialService {
  static const tag = "MaterialServiceImpl";
  @override
  Future<GenshinDBResponseJson> getMaterialInfo(
      {CustomCancelToken? cancelToken, required String name}) async {
    return await get(
        host: ApiPath.baseHost,
        path: ApiPath.getMaterialInfo,
        cancelToken: cancelToken,
        params: {
          "name": name,
        });
  }
}
