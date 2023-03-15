import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
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
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, Object?> json) =>
      _$ImageModelFromJson(json);
}
