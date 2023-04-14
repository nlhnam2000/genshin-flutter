import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:genshin_app/models/image_model.dart';

part 'generated/material_model.freezed.dart';
part 'generated/material_model.g.dart';

@freezed
class MaterialModel with _$MaterialModel {
  const factory MaterialModel({
    String? name,
    String? description,
    int? sortorder,
    String? rarity,
    String? category,
    String? materialtype,
    List<String>? source,
    ImageModel? images,
  }) = _MaterialModel;

  factory MaterialModel.fromJson(Map<String, Object?> json) =>
      _$MaterialModelFromJson(json);
}
