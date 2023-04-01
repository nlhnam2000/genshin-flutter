// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weapon_general_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeaponGeneralModel _$WeaponGeneralModelFromJson(Map<String, dynamic> json) {
  return _WeaponGeneralModel.fromJson(json);
}

/// @nodoc
mixin _$WeaponGeneralModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get weaponType => throw _privateConstructorUsedError;
  String? get rarity => throw _privateConstructorUsedError;
  ImageModel? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponGeneralModelCopyWith<WeaponGeneralModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponGeneralModelCopyWith<$Res> {
  factory $WeaponGeneralModelCopyWith(
          WeaponGeneralModel value, $Res Function(WeaponGeneralModel) then) =
      _$WeaponGeneralModelCopyWithImpl<$Res, WeaponGeneralModel>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? weaponType,
      String? rarity,
      ImageModel? images});

  $ImageModelCopyWith<$Res>? get images;
}

/// @nodoc
class _$WeaponGeneralModelCopyWithImpl<$Res, $Val extends WeaponGeneralModel>
    implements $WeaponGeneralModelCopyWith<$Res> {
  _$WeaponGeneralModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? weaponType = freezed,
    Object? rarity = freezed,
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
      weaponType: freezed == weaponType
          ? _value.weaponType
          : weaponType // ignore: cast_nullable_to_non_nullable
              as String?,
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_WeaponGeneralModelCopyWith<$Res>
    implements $WeaponGeneralModelCopyWith<$Res> {
  factory _$$_WeaponGeneralModelCopyWith(_$_WeaponGeneralModel value,
          $Res Function(_$_WeaponGeneralModel) then) =
      __$$_WeaponGeneralModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? weaponType,
      String? rarity,
      ImageModel? images});

  @override
  $ImageModelCopyWith<$Res>? get images;
}

/// @nodoc
class __$$_WeaponGeneralModelCopyWithImpl<$Res>
    extends _$WeaponGeneralModelCopyWithImpl<$Res, _$_WeaponGeneralModel>
    implements _$$_WeaponGeneralModelCopyWith<$Res> {
  __$$_WeaponGeneralModelCopyWithImpl(
      _$_WeaponGeneralModel _value, $Res Function(_$_WeaponGeneralModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? weaponType = freezed,
    Object? rarity = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_WeaponGeneralModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      weaponType: freezed == weaponType
          ? _value.weaponType
          : weaponType // ignore: cast_nullable_to_non_nullable
              as String?,
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeaponGeneralModel implements _WeaponGeneralModel {
  const _$_WeaponGeneralModel(
      {this.name, this.description, this.weaponType, this.rarity, this.images});

  factory _$_WeaponGeneralModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeaponGeneralModelFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? weaponType;
  @override
  final String? rarity;
  @override
  final ImageModel? images;

  @override
  String toString() {
    return 'WeaponGeneralModel(name: $name, description: $description, weaponType: $weaponType, rarity: $rarity, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeaponGeneralModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.weaponType, weaponType) ||
                other.weaponType == weaponType) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, weaponType, rarity, images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeaponGeneralModelCopyWith<_$_WeaponGeneralModel> get copyWith =>
      __$$_WeaponGeneralModelCopyWithImpl<_$_WeaponGeneralModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeaponGeneralModelToJson(
      this,
    );
  }
}

abstract class _WeaponGeneralModel implements WeaponGeneralModel {
  const factory _WeaponGeneralModel(
      {final String? name,
      final String? description,
      final String? weaponType,
      final String? rarity,
      final ImageModel? images}) = _$_WeaponGeneralModel;

  factory _WeaponGeneralModel.fromJson(Map<String, dynamic> json) =
      _$_WeaponGeneralModel.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get weaponType;
  @override
  String? get rarity;
  @override
  ImageModel? get images;
  @override
  @JsonKey(ignore: true)
  _$$_WeaponGeneralModelCopyWith<_$_WeaponGeneralModel> get copyWith =>
      throw _privateConstructorUsedError;
}
