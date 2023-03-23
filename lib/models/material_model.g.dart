// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MaterialModel _$$_MaterialModelFromJson(Map<String, dynamic> json) =>
    _$_MaterialModel(
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
    );

Map<String, dynamic> _$$_MaterialModelToJson(_$_MaterialModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'sortorder': instance.sortorder,
      'rarity': instance.rarity,
      'category': instance.category,
      'materialtype': instance.materialtype,
      'source': instance.source,
      'images': instance.images,
    };
