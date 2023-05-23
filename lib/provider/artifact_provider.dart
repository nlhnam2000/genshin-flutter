import 'package:dio/dio.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/models/general_artifact_model.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:flutter_core/network/custom_cancel_token.dart';
import 'package:genshin_app/repository/abstract/artifact_repo.dart';
import 'package:genshin_app/repository/impl/artifact_repo_impl.dart';
import 'package:get/get.dart';
import 'package:flutter_core/bases/exceptions.dart';

class ArtifactProvider extends BaseProvider {
  BaseProviderModel<List<GeneralArtifactModel>> _generalArtifactList =
      BaseProviderModel.init(data: []);
  BaseProviderModel<List<GeneralArtifactModel>> get generalArtifactList =>
      _generalArtifactList;

  final _artifactRepo = Get.find<ArtifactRepo>(tag: ArtifactRepoImpl.tag);

  Future<void> getAllArtifact({CustomCancelToken? cancelToken}) async {
    try {
      _generalArtifactList = BaseProviderModel.loading();
      notifyListeners();
      List<GeneralArtifactModel> response =
          await _artifactRepo.getAllArtifacts(cancelToken: cancelToken);
      _generalArtifactList = BaseProviderModel.succeed(response);
    } on DioError catch (e) {
      setErrorMessage(e.message.toString());
      _generalArtifactList =
          BaseProviderModel.failed(ServerResponseError(e.message.toString()));
    } finally {
      notifyListeners();
    }
  }
}
