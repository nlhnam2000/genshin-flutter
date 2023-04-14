// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../material_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MaterialModel _$MaterialModelFromJson(Map<String, dynamic> json) {
  return _MaterialModel.fromJson(json);
}

/// @nodoc
mixin _$MaterialModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get sortorder => throw _privateConstructorUsedError;
  String? get rarity => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get materialtype => throw _privateConstructorUsedError;
  List<String>? get source => throw _privateConstructorUsedError;
  ImageModel? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaterialModelCopyWith<MaterialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialModelCopyWith<$Res> {
  factory $MaterialModelCopyWith(
          MaterialModel value, $Res Function(MaterialModel) then) =
      _$MaterialModelCopyWithImpl<$Res, MaterialModel>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      int? sortorder,
      String? rarity,
      String? category,
      String? materialtype,
      List<String>? source,
      ImageModel? images});

  $ImageModelCopyWith<$Res>? get images;
}

/// @nodoc
class _$MaterialModelCopyWithImpl<$Res, $Val extends MaterialModel>
    implements $MaterialModelCopyWith<$Res> {
  _$MaterialModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? sortorder = freezed,
    Object? rarity = freezed,
    Object? category = freezed,
    Object? materialtype = freezed,
    Object? source = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sortorder: freezed == sortorder
          ? _value.sortorder
          : sortorder // ignore: cast_nullable_to_non_nullable
              as int?,
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      materialtype: freezed == materialtype
          ? _value.materialtype
          : materialtype // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $ImageModelCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MaterialModelCopyWith<$Res>
    implements $MaterialModelCopyWith<$Res> {
  factory _$$_MaterialModelCopyWith(
          _$_MaterialModel value, $Res Function(_$_MaterialModel) then) =
      __$$_MaterialModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      int? sortorder,
      String? rarity,
      String? category,
      String? materialtype,
      List<String>? source,
      ImageModel? images});

  @override
  $ImageModelCopyWith<$Res>? get images;
}

/// @nodoc
class __$$_MaterialModelCopyWithImpl<$Res>
    extends _$MaterialModelCopyWithImpl<$Res, _$_MaterialModel>
    implements _$$_MaterialModelCopyWith<$Res> {
  __$$_MaterialModelCopyWithImpl(
      _$_MaterialModel _value, $Res Function(_$_MaterialModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? sortorder = freezed,
    Object? rarity = freezed,
    Object? category = freezed,
    Object? materialtype = freezed,
    Object? source = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_MaterialModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sortorder: freezed == sortorder
          ? _value.sortorder
          : sortorder // ignore: cast_nullable_to_non_nullable
              as int?,
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      materialtype: freezed == materialtype
          ? _value.materialtype
          : materialtype // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value._source
          : source // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MaterialModel implements _MaterialModel {
  const _$_MaterialModel(
      {this.name,
      this.description,
      this.sortorder,
      this.rarity,
      this.category,
      this.materialtype,
      final List<String>? source,
      this.images})
      : _source = source;

  factory _$_MaterialModel.fromJson(Map<String, dynamic> json) =>
      _$$_MaterialModelFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? sortorder;
  @override
  final String? rarity;
  @override
  final String? category;
  @override
  final String? materialtype;
  final List<String>? _source;
  @override
  List<String>? get source {
    final value = _source;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ImageModel? images;

  @override
  String toString() {
    return 'MaterialModel(name: $name, description: $description, sortorder: $sortorder, rarity: $rarity, category: $category, materialtype: $materialtype, source: $source, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaterialModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sortorder, sortorder) ||
                other.sortorder == sortorder) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.materialtype, materialtype) ||
                other.materialtype == materialtype) &&
            const DeepCollectionEquality().equals(other._source, _source) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      sortorder,
      rarity,
      category,
      materialtype,
      const DeepCollectionEquality().hash(_source),
      images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaterialModelCopyWith<_$_MaterialModel> get copyWith =>
      __$$_MaterialModelCopyWithImpl<_$_MaterialModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MaterialModelToJson(
      this,
    );
  }
}

abstract class _MaterialModel implements MaterialModel {
  const factory _MaterialModel(
      {final String? name,
      final String? description,
      final int? sortorder,
      final String? rarity,
      final String? category,
      final String? materialtype,
      final List<String>? source,
      final ImageModel? images}) = _$_MaterialModel;

  factory _MaterialModel.fromJson(Map<String, dynamic> json) =
      _$_MaterialModel.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get sortorder;
  @override
  String? get rarity;
  @override
  String? get category;
  @override
  String? get materialtype;
  @override
  List<String>? get source;
  @override
  ImageModel? get images;
  @override
  @JsonKey(ignore: true)
  _$$_MaterialModelCopyWith<_$_MaterialModel> get copyWith =>
      throw _privateConstructorUsedError;
}
