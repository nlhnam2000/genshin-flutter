import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:genshin_app/models/image_model.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required String name,
    required String fullname,
    required String title,
    required String description,
    required String rarity,
    required String element,
    required String substat,
    required String gender,
    required String body,
    required String association,
    required String region,
    required String affiliation,
    required String birthdaymmdd,
    required String birthday,
    required String constellation,
    required ImageModel images,
  }) = _Character;

  factory Character.fromJson(Map<String, Object?> json) =>
      _$CharacterFromJson(json);
}
