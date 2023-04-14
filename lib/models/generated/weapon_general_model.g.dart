// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../weapon_general_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeaponGeneralModel _$$_WeaponGeneralModelFromJson(
        Map<String, dynamic> json) =>
    _$_WeaponGeneralModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      weaponType: json['weaponType'] as String?,
      rarity: json['rarity'] as String?,
      images: json['images'] == null
          ? null
          : ImageModel.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeaponGeneralModelToJson(
        _$_WeaponGeneralModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'weaponType': instance.weaponType,
      'rarity': instance.rarity,
      'images': instance.images,
    };
