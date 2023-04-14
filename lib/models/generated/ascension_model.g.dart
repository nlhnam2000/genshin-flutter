// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../ascension_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AscensionModel _$$_AscensionModelFromJson(Map<String, dynamic> json) =>
    _$_AscensionModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      sortorder: json['sortorder'] as int?,
      rarity: json['rarity'] as String?,
      category: json['category'] as String?,
      materialtype: json['materialtype'] as String?,
      source:
          (json['source'] as List<dynamic>?)?.map((e) => e as String).toList(),
      images: json['images'] == null
          ? null
          : ImageModel.fromJson(json['images'] as Map<String, dynamic>),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_AscensionModelToJson(_$_AscensionModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'sortorder': instance.sortorder,
      'rarity': instance.rarity,
      'category': instance.category,
      'materialtype': instance.materialtype,
      'source': instance.source,
      'images': instance.images,
      'count': instance.count,
    };
