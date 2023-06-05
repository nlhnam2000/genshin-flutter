// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../general_artifact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneralArtifactModel _$GeneralArtifactModelFromJson(Map<String, dynamic> json) {
  return _GeneralArtifactModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralArtifactModel {
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralArtifactModelCopyWith<GeneralArtifactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralArtifactModelCopyWith<$Res> {
  factory $GeneralArtifactModelCopyWith(GeneralArtifactModel value,
          $Res Function(GeneralArtifactModel) then) =
      _$GeneralArtifactModelCopyWithImpl<$Res, GeneralArtifactModel>;
  @useResult
  $Res call({String? name, String? image});
}

/// @nodoc
class _$GeneralArtifactModelCopyWithImpl<$Res,
        $Val extends GeneralArtifactModel>
    implements $GeneralArtifactModelCopyWith<$Res> {
  _$GeneralArtifactModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeneralArtifactModelCopyWith<$Res>
    implements $GeneralArtifactModelCopyWith<$Res> {
  factory _$$_GeneralArtifactModelCopyWith(_$_GeneralArtifactModel value,
          $Res Function(_$_GeneralArtifactModel) then) =
      __$$_GeneralArtifactModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? image});
}

/// @nodoc
class __$$_GeneralArtifactModelCopyWithImpl<$Res>
    extends _$GeneralArtifactModelCopyWithImpl<$Res, _$_GeneralArtifactModel>
    implements _$$_GeneralArtifactModelCopyWith<$Res> {
  __$$_GeneralArtifactModelCopyWithImpl(_$_GeneralArtifactModel _value,
      $Res Function(_$_GeneralArtifactModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_GeneralArtifactModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralArtifactModel implements _GeneralArtifactModel {
  const _$_GeneralArtifactModel({this.name, this.image});

  factory _$_GeneralArtifactModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralArtifactModelFromJson(json);

  @override
  final String? name;
  @override
  final String? image;

  @override
  String toString() {
    return 'GeneralArtifactModel(name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralArtifactModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneralArtifactModelCopyWith<_$_GeneralArtifactModel> get copyWith =>
      __$$_GeneralArtifactModelCopyWithImpl<_$_GeneralArtifactModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralArtifactModelToJson(
      this,
    );
  }
}

abstract class _GeneralArtifactModel implements GeneralArtifactModel {
  const factory _GeneralArtifactModel(
      {final String? name, final String? image}) = _$_GeneralArtifactModel;

  factory _GeneralArtifactModel.fromJson(Map<String, dynamic> json) =
      _$_GeneralArtifactModel.fromJson;

  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralArtifactModelCopyWith<_$_GeneralArtifactModel> get copyWith =>
      throw _privateConstructorUsedError;
}
