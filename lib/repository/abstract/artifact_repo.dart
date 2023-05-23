import 'package:genshin_app/models/general_artifact_model.dart';
import 'package:flutter_core/network/custom_cancel_token.dart';

abstract class ArtifactRepo {
  Future<List<GeneralArtifactModel>> getAllArtifacts(
      {CustomCancelToken? cancelToken});
}
