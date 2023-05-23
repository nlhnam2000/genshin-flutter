import 'package:genshin_app/models/general_artifact_model.dart';
import 'package:flutter_core/network/custom_cancel_token.dart';
import 'package:genshin_app/network/abstract/artifact_service.dart';
import 'package:genshin_app/network/impl/artifact_service_impl.dart';
import 'package:genshin_app/repository/abstract/artifact_repo.dart';
import 'package:get/get.dart';

class ArtifactRepoImpl implements ArtifactRepo {
  static const String tag = "ArtifactRepoImpl";

  final _artifactService =
      Get.find<ArtifactService>(tag: ArtifactServiceImpl.tag);

  @override
  Future<List<GeneralArtifactModel>> getAllArtifacts(
      {CustomCancelToken? cancelToken}) async {
    List<GeneralArtifactModel> result = [];
    final response = await _artifactService.getAllArtifacts();
    result = response.content!["data"]
        .map<GeneralArtifactModel>(
            (item) => GeneralArtifactModel.fromJson(item))
        .toList();

    return result;
  }
}
