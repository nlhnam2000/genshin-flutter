// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../combat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CombatModel _$CombatModelFromJson(Map<String, dynamic> json) {
  return _CombatModel.fromJson(json);
}

/// @nodoc
mixin _$CombatModel {
  String? get name => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CombatModelCopyWith<CombatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CombatModelCopyWith<$Res> {
  factory $CombatModelCopyWith(
          CombatModel value, $Res Function(CombatModel) then) =
      _$CombatModelCopyWithImpl<$Res, CombatModel>;
  @useResult
  $Res call({String? name, String? info});
}

/// @nodoc
class _$CombatModelCopyWithImpl<$Res, $Val extends CombatModel>
    implements $CombatModelCopyWith<$Res> {
  _$CombatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CombatModelCopyWith<$Res>
    implements $CombatModelCopyWith<$Res> {
  factory _$$_CombatModelCopyWith(
          _$_CombatModel value, $Res Function(_$_CombatModel) then) =
      __$$_CombatModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? info});
}

/// @nodoc
class __$$_CombatModelCopyWithImpl<$Res>
    extends _$CombatModelCopyWithImpl<$Res, _$_CombatModel>
    implements _$$_CombatModelCopyWith<$Res> {
  __$$_CombatModelCopyWithImpl(
      _$_CombatModel _value, $Res Function(_$_CombatModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? info = freezed,
  }) {
    return _then(_$_CombatModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CombatModel implements _CombatModel {
  const _$_CombatModel({this.name, this.info});

  factory _$_CombatModel.fromJson(Map<String, dynamic> json) =>
      _$$_CombatModelFromJson(json);

  @override
  final String? name;
  @override
  final String? info;

  @override
  String toString() {
    return 'CombatModel(name: $name, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CombatModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CombatModelCopyWith<_$_CombatModel> get copyWith =>
      __$$_CombatModelCopyWithImpl<_$_CombatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CombatModelToJson(
      this,
    );
  }
}

abstract class _CombatModel implements CombatModel {
  const factory _CombatModel({final String? name, final String? info}) =
      _$_CombatModel;

  factory _CombatModel.fromJson(Map<String, dynamic> json) =
      _$_CombatModel.fromJson;

  @override
  String? get name;
  @override
  String? get info;
  @override
  @JsonKey(ignore: true)
  _$$_CombatModelCopyWith<_$_CombatModel> get copyWith =>
      throw _privateConstructorUsedError;
}
