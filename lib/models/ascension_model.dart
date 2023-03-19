import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:genshin_app/models/image_model.dart';

part 'ascension_model.freezed.dart';
part 'ascension_model.g.dart';

@freezed
class AscensionModel with _$AscensionModel {
  const factory AscensionModel({
    String? name,
    String? description,
    int? sortorder,
    String? rarity,
    String? category,
    String? materialtype,
    List<String>? source,
    ImageModel? images,
    int? count,
  }) = _AscensionModel;

  factory AscensionModel.fromJson(Map<String, Object?> json) =>
      _$AscensionModelFromJson(json);
}
