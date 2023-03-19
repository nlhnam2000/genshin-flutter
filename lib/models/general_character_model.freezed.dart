// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'general_character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneralCharacterModel _$GeneralCharacterModelFromJson(
    Map<String, dynamic> json) {
  return _GeneralCharacterModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralCharacterModel {
  String? get fullname => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get element => throw _privateConstructorUsedError;
  ImageModel? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralCharacterModelCopyWith<GeneralCharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralCharacterModelCopyWith<$Res> {
  factory $GeneralCharacterModelCopyWith(GeneralCharacterModel value,
          $Res Function(GeneralCharacterModel) then) =
      _$GeneralCharacterModelCopyWithImpl<$Res, GeneralCharacterModel>;
  @useResult
  $Res call(
      {String? fullname, String? name, String? element, ImageModel? images});

  $ImageModelCopyWith<$Res>? get images;
}

/// @nodoc
class _$GeneralCharacterModelCopyWithImpl<$Res,
        $Val extends GeneralCharacterModel>
    implements $GeneralCharacterModelCopyWith<$Res> {
  _$GeneralCharacterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = freezed,
    Object? name = freezed,
    Object? element = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      element: freezed == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_GeneralCharacterModelCopyWith<$Res>
    implements $GeneralCharacterModelCopyWith<$Res> {
  factory _$$_GeneralCharacterModelCopyWith(_$_GeneralCharacterModel value,
          $Res Function(_$_GeneralCharacterModel) then) =
      __$$_GeneralCharacterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullname, String? name, String? element, ImageModel? images});

  @override
  $ImageModelCopyWith<$Res>? get images;
}

/// @nodoc
class __$$_GeneralCharacterModelCopyWithImpl<$Res>
    extends _$GeneralCharacterModelCopyWithImpl<$Res, _$_GeneralCharacterModel>
    implements _$$_GeneralCharacterModelCopyWith<$Res> {
  __$$_GeneralCharacterModelCopyWithImpl(_$_GeneralCharacterModel _value,
      $Res Function(_$_GeneralCharacterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = freezed,
    Object? name = freezed,
    Object? element = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_GeneralCharacterModel(
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      element: freezed == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
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
class _$_GeneralCharacterModel implements _GeneralCharacterModel {
  const _$_GeneralCharacterModel(
      {this.fullname, this.name, this.element, this.images});

  factory _$_GeneralCharacterModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralCharacterModelFromJson(json);

  @override
  final String? fullname;
  @override
  final String? name;
  @override
  final String? element;
  @override
  final ImageModel? images;

  @override
  String toString() {
    return 'GeneralCharacterModel(fullname: $fullname, name: $name, element: $element, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralCharacterModel &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.element, element) || other.element == element) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullname, name, element, images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneralCharacterModelCopyWith<_$_GeneralCharacterModel> get copyWith =>
      __$$_GeneralCharacterModelCopyWithImpl<_$_GeneralCharacterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralCharacterModelToJson(
      this,
    );
  }
}

abstract class _GeneralCharacterModel implements GeneralCharacterModel {
  const factory _GeneralCharacterModel(
      {final String? fullname,
      final String? name,
      final String? element,
      final ImageModel? images}) = _$_GeneralCharacterModel;

  factory _GeneralCharacterModel.fromJson(Map<String, dynamic> json) =
      _$_GeneralCharacterModel.fromJson;

  @override
  String? get fullname;
  @override
  String? get name;
  @override
  String? get element;
  @override
  ImageModel? get images;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralCharacterModelCopyWith<_$_GeneralCharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
