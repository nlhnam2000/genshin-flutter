import 'package:genshin_app/network/api_service.dart';
import 'package:flutter_core/network/custom_cancel_token.dart';

abstract class MaterialService {
  Future<GenshinDBResponseJson> getMaterialInfo(
      {CustomCancelToken? cancelToken, required String name});
}
