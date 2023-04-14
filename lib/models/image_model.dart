import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/image_model.freezed.dart';
part 'generated/image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  const ImageModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ImageModel({
    String? image,
    String? card,
    String? portrait,
    String? icon,
    String? sideicon,
    @JsonKey(name: "hoyolab-avatar") String? hoyolabAvatar,
    String? nameicon,
    String? nameiconcard,
    String? namesideicon,
    String? cover1,
    String? cover2,
    String? combat1,
    String? combat2,
    String? combat3,
    String? passive1,
    String? passive2,
    String? passive3,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, Object?> json) =>
      _$ImageModelFromJson(json);

  String? getCombatImage(int index) {
    switch (index) {
      case 1:
        return combat1;
      case 2:
        return combat2;
      case 3:
        return combat3;
      default:
        return null;
    }
  }
}
