// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      name: json['name'] as String,
      fullname: json['fullname'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      rarity: json['rarity'] as String,
      element: json['element'] as String,
      substat: json['substat'] as String,
      gender: json['gender'] as String,
      body: json['body'] as String,
      association: json['association'] as String,
      region: json['region'] as String,
      affiliation: json['affiliation'] as String,
      birthdaymmdd: json['birthdaymmdd'] as String,
      birthday: json['birthday'] as String,
      constellation: json['constellation'] as String,
      images: ImageModel.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fullname': instance.fullname,
      'title': instance.title,
      'description': instance.description,
      'rarity': instance.rarity,
      'element': instance.element,
      'substat': instance.substat,
      'gender': instance.gender,
      'body': instance.body,
      'association': instance.association,
      'region': instance.region,
      'affiliation': instance.affiliation,
      'birthdaymmdd': instance.birthdaymmdd,
      'birthday': instance.birthday,
      'constellation': instance.constellation,
      'images': instance.images,
    };
