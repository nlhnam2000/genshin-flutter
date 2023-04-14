import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/combat_model.freezed.dart';
part 'generated/combat_model.g.dart';

@freezed
class CombatModel with _$CombatModel {
  const factory CombatModel({
    String? name,
    String? info,
  }) = _CombatModel;

  factory CombatModel.fromJson(Map<String, Object?> json) =>
      _$CombatModelFromJson(json);
}
