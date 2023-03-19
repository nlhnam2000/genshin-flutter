// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeneralCharacterModel _$$_GeneralCharacterModelFromJson(
        Map<String, dynamic> json) =>
    _$_GeneralCharacterModel(
      fullname: json['fullname'] as String?,
      name: json['name'] as String?,
      element: json['element'] as String?,
      images: json['images'] == null
          ? null
          : ImageModel.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeneralCharacterModelToJson(
        _$_GeneralCharacterModel instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'name': instance.name,
      'element': instance.element,
      'images': instance.images,
    };
