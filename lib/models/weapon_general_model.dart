import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:genshin_app/models/image_model.dart';

part 'generated/weapon_general_model.freezed.dart';
part 'generated/weapon_general_model.g.dart';

@freezed
class WeaponGeneralModel with _$WeaponGeneralModel {
  const factory WeaponGeneralModel({
    String? name,
    String? description,
    String? weaponType,
    String? rarity,
    ImageModel? images,
  }) = _WeaponGeneralModel;

  factory WeaponGeneralModel.fromJson(Map<String, Object?> json) =>
      _$WeaponGeneralModelFromJson(json);
}
