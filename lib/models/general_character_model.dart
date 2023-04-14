import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:genshin_app/models/image_model.dart';

part 'generated/general_character_model.freezed.dart';
part 'generated/general_character_model.g.dart';

@freezed
class GeneralCharacterModel with _$GeneralCharacterModel {
  const factory GeneralCharacterModel({
    String? fullname,
    String? name,
    String? element,
    ImageModel? images,
  }) = _GeneralCharacterModel;

  factory GeneralCharacterModel.fromJson(Map<String, Object?> json) =>
      _$GeneralCharacterModelFromJson(json);
}
