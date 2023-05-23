import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:genshin_app/models/image_model.dart';

part 'generated/general_artifact_model.freezed.dart';
part 'generated/general_artifact_model.g.dart';

@freezed
class GeneralArtifactModel with _$GeneralArtifactModel {
  const factory GeneralArtifactModel({
    String? name,
    String? image,
  }) = _GeneralArtifactModel;

  factory GeneralArtifactModel.fromJson(Map<String, Object?> json) =>
      _$GeneralArtifactModelFromJson(json);
}
