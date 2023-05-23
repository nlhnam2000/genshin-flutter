import 'package:flutter_core/network/custom_cancel_token.dart';
import 'package:genshin_app/device/storage_service.dart';
import 'package:genshin_app/network/abstract/artifact_service.dart';
import 'package:genshin_app/network/api_path.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:genshin_app/network/interceptor.dart';
import 'package:genshin_app/utils/constants.dart';

class ArtifactServiceImpl implements ArtifactService {
  static const String tag = "ArtifactServiceImpl";
  @override
  Future<GenshinDBResponseJson> getAllArtifacts(
      {CustomCancelToken? cancelToken}) async {
    final deployHost = await StorageService().get(StorageConstant.savedHost);
    GenshinDBResponseJson response = await get(
        host: deployHost ?? ApiPath.baseHost, path: ApiPath.getAllArtifacts);

    return response;
  }
}
