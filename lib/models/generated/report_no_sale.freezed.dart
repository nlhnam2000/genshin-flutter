// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../report_no_sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportNoSaleOrderModel _$ReportNoSaleOrderModelFromJson(
    Map<String, dynamic> json) {
  return _ReportNoSaleOrderModel.fromJson(json);
}

/// @nodoc
mixin _$ReportNoSaleOrderModel {
  String? get invoiceCode => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  int? get skus => throw _privateConstructorUsedError;
  String? get submitOrderDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportNoSaleOrderModelCopyWith<ReportNoSaleOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportNoSaleOrderModelCopyWith<$Res> {
  factory $ReportNoSaleOrderModelCopyWith(ReportNoSaleOrderModel value,
          $Res Function(ReportNoSaleOrderModel) then) =
      _$ReportNoSaleOrderModelCopyWithImpl<$Res, ReportNoSaleOrderModel>;
  @useResult
  $Res call(
      {String? invoiceCode,
      String? status,
      String? price,
      int? skus,
      String? submitOrderDay});
}

/// @nodoc
class _$ReportNoSaleOrderModelCopyWithImpl<$Res,
        $Val extends ReportNoSaleOrderModel>
    implements $ReportNoSaleOrderModelCopyWith<$Res> {
  _$ReportNoSaleOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceCode = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? skus = freezed,
    Object? submitOrderDay = freezed,
  }) {
    return _then(_value.copyWith(
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      skus: freezed == skus
          ? _value.skus
          : skus // ignore: cast_nullable_to_non_nullable
              as int?,
      submitOrderDay: freezed == submitOrderDay
          ? _value.submitOrderDay
          : submitOrderDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReportNoSaleOrderModelCopyWith<$Res>
    implements $ReportNoSaleOrderModelCopyWith<$Res> {
  factory _$$_ReportNoSaleOrderModelCopyWith(_$_ReportNoSaleOrderModel value,
          $Res Function(_$_ReportNoSaleOrderModel) then) =
      __$$_ReportNoSaleOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? invoiceCode,
      String? status,
      String? price,
      int? skus,
      String? submitOrderDay});
}

/// @nodoc
class __$$_ReportNoSaleOrderModelCopyWithImpl<$Res>
    extends _$ReportNoSaleOrderModelCopyWithImpl<$Res,
        _$_ReportNoSaleOrderModel>
    implements _$$_ReportNoSaleOrderModelCopyWith<$Res> {
  __$$_ReportNoSaleOrderModelCopyWithImpl(_$_ReportNoSaleOrderModel _value,
      $Res Function(_$_ReportNoSaleOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceCode = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? skus = freezed,
    Object? submitOrderDay = freezed,
  }) {
    return _then(_$_ReportNoSaleOrderModel(
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      skus: freezed == skus
          ? _value.skus
          : skus // ignore: cast_nullable_to_non_nullable
              as int?,
      submitOrderDay: freezed == submitOrderDay
          ? _value.submitOrderDay
          : submitOrderDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportNoSaleOrderModel implements _ReportNoSaleOrderModel {
  const _$_ReportNoSaleOrderModel(
      {this.invoiceCode,
      this.status,
      this.price,
      this.skus,
      this.submitOrderDay});

  factory _$_ReportNoSaleOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReportNoSaleOrderModelFromJson(json);

  @override
  final String? invoiceCode;
  @override
  final String? status;
  @override
  final String? price;
  @override
  final int? skus;
  @override
  final String? submitOrderDay;

  @override
  String toString() {
    return 'ReportNoSaleOrderModel(invoiceCode: $invoiceCode, status: $status, price: $price, skus: $skus, submitOrderDay: $submitOrderDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportNoSaleOrderModel &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.skus, skus) || other.skus == skus) &&
            (identical(other.submitOrderDay, submitOrderDay) ||
                other.submitOrderDay == submitOrderDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, invoiceCode, status, price, skus, submitOrderDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportNoSaleOrderModelCopyWith<_$_ReportNoSaleOrderModel> get copyWith =>
      __$$_ReportNoSaleOrderModelCopyWithImpl<_$_ReportNoSaleOrderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportNoSaleOrderModelToJson(
      this,
    );
  }
}

abstract class _ReportNoSaleOrderModel implements ReportNoSaleOrderModel {
  const factory _ReportNoSaleOrderModel(
      {final String? invoiceCode,
      final String? status,
      final String? price,
      final int? skus,
      final String? submitOrderDay}) = _$_ReportNoSaleOrderModel;

  factory _ReportNoSaleOrderModel.fromJson(Map<String, dynamic> json) =
      _$_ReportNoSaleOrderModel.fromJson;

  @override
  String? get invoiceCode;
  @override
  String? get status;
  @override
  String? get price;
  @override
  int? get skus;
  @override
  String? get submitOrderDay;
  @override
  @JsonKey(ignore: true)
  _$$_ReportNoSaleOrderModelCopyWith<_$_ReportNoSaleOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportNoSaleCustomerModel _$ReportNoSaleCustomerModelFromJson(
    Map<String, dynamic> json) {
  return _ReportNoSaleCustomerModel.fromJson(json);
}

/// @nodoc
mixin _$ReportNoSaleCustomerModel {
  String? get customerCode => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get customerUnit => throw _privateConstructorUsedError;
  String? get lastDayVisit => throw _privateConstructorUsedError;
  String? get lastDatOpenSale => throw _privateConstructorUsedError;
  String? get lastDaySale => throw _privateConstructorUsedError;
  List<ReportNoSaleOrderModel>? get lastOrderInfo =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportNoSaleCustomerModelCopyWith<ReportNoSaleCustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportNoSaleCustomerModelCopyWith<$Res> {
  factory $ReportNoSaleCustomerModelCopyWith(ReportNoSaleCustomerModel value,
          $Res Function(ReportNoSaleCustomerModel) then) =
      _$ReportNoSaleCustomerModelCopyWithImpl<$Res, ReportNoSaleCustomerModel>;
  @useResult
  $Res call(
      {String? customerCode,
      String? customerName,
      String? customerUnit,
      String? lastDayVisit,
      String? lastDatOpenSale,
      String? lastDaySale,
      List<ReportNoSaleOrderModel>? lastOrderInfo});
}

/// @nodoc
class _$ReportNoSaleCustomerModelCopyWithImpl<$Res,
        $Val extends ReportNoSaleCustomerModel>
    implements $ReportNoSaleCustomerModelCopyWith<$Res> {
  _$ReportNoSaleCustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customerUnit = freezed,
    Object? lastDayVisit = freezed,
    Object? lastDatOpenSale = freezed,
    Object? lastDaySale = freezed,
    Object? lastOrderInfo = freezed,
  }) {
    return _then(_value.copyWith(
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerUnit: freezed == customerUnit
          ? _value.customerUnit
          : customerUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      lastDayVisit: freezed == lastDayVisit
          ? _value.lastDayVisit
          : lastDayVisit // ignore: cast_nullable_to_non_nullable
              as String?,
      lastDatOpenSale: freezed == lastDatOpenSale
          ? _value.lastDatOpenSale
          : lastDatOpenSale // ignore: cast_nullable_to_non_nullable
              as String?,
      lastDaySale: freezed == lastDaySale
          ? _value.lastDaySale
          : lastDaySale // ignore: cast_nullable_to_non_nullable
              as String?,
      lastOrderInfo: freezed == lastOrderInfo
          ? _value.lastOrderInfo
          : lastOrderInfo // ignore: cast_nullable_to_non_nullable
              as List<ReportNoSaleOrderModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReportNoSaleCustomerModelCopyWith<$Res>
    implements $ReportNoSaleCustomerModelCopyWith<$Res> {
  factory _$$_ReportNoSaleCustomerModelCopyWith(
          _$_ReportNoSaleCustomerModel value,
          $Res Function(_$_ReportNoSaleCustomerModel) then) =
      __$$_ReportNoSaleCustomerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? customerCode,
      String? customerName,
      String? customerUnit,
      String? lastDayVisit,
      String? lastDatOpenSale,
      String? lastDaySale,
      List<ReportNoSaleOrderModel>? lastOrderInfo});
}

/// @nodoc
class __$$_ReportNoSaleCustomerModelCopyWithImpl<$Res>
    extends _$ReportNoSaleCustomerModelCopyWithImpl<$Res,
        _$_ReportNoSaleCustomerModel>
    implements _$$_ReportNoSaleCustomerModelCopyWith<$Res> {
  __$$_ReportNoSaleCustomerModelCopyWithImpl(
      _$_ReportNoSaleCustomerModel _value,
      $Res Function(_$_ReportNoSaleCustomerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customerUnit = freezed,
    Object? lastDayVisit = freezed,
    Object? lastDatOpenSale = freezed,
    Object? lastDaySale = freezed,
    Object? lastOrderInfo = freezed,
  }) {
    return _then(_$_ReportNoSaleCustomerModel(
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerUnit: freezed == customerUnit
          ? _value.customerUnit
          : customerUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      lastDayVisit: freezed == lastDayVisit
          ? _value.lastDayVisit
          : lastDayVisit // ignore: cast_nullable_to_non_nullable
              as String?,
      lastDatOpenSale: freezed == lastDatOpenSale
          ? _value.lastDatOpenSale
          : lastDatOpenSale // ignore: cast_nullable_to_non_nullable
              as String?,
      lastDaySale: freezed == lastDaySale
          ? _value.lastDaySale
          : lastDaySale // ignore: cast_nullable_to_non_nullable
              as String?,
      lastOrderInfo: freezed == lastOrderInfo
          ? _value._lastOrderInfo
          : lastOrderInfo // ignore: cast_nullable_to_non_nullable
              as List<ReportNoSaleOrderModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportNoSaleCustomerModel implements _ReportNoSaleCustomerModel {
  const _$_ReportNoSaleCustomerModel(
      {this.customerCode,
      this.customerName,
      this.customerUnit,
      this.lastDayVisit,
      this.lastDatOpenSale,
      this.lastDaySale,
      final List<ReportNoSaleOrderModel>? lastOrderInfo})
      : _lastOrderInfo = lastOrderInfo;

  factory _$_ReportNoSaleCustomerModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReportNoSaleCustomerModelFromJson(json);

  @override
  final String? customerCode;
  @override
  final String? customerName;
  @override
  final String? customerUnit;
  @override
  final String? lastDayVisit;
  @override
  final String? lastDatOpenSale;
  @override
  final String? lastDaySale;
  final List<ReportNoSaleOrderModel>? _lastOrderInfo;
  @override
  List<ReportNoSaleOrderModel>? get lastOrderInfo {
    final value = _lastOrderInfo;
    if (value == null) return null;
    if (_lastOrderInfo is EqualUnmodifiableListView) return _lastOrderInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReportNoSaleCustomerModel(customerCode: $customerCode, customerName: $customerName, customerUnit: $customerUnit, lastDayVisit: $lastDayVisit, lastDatOpenSale: $lastDatOpenSale, lastDaySale: $lastDaySale, lastOrderInfo: $lastOrderInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportNoSaleCustomerModel &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerUnit, customerUnit) ||
                other.customerUnit == customerUnit) &&
            (identical(other.lastDayVisit, lastDayVisit) ||
                other.lastDayVisit == lastDayVisit) &&
            (identical(other.lastDatOpenSale, lastDatOpenSale) ||
                other.lastDatOpenSale == lastDatOpenSale) &&
            (identical(other.lastDaySale, lastDaySale) ||
                other.lastDaySale == lastDaySale) &&
            const DeepCollectionEquality()
                .equals(other._lastOrderInfo, _lastOrderInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      customerCode,
      customerName,
      customerUnit,
      lastDayVisit,
      lastDatOpenSale,
      lastDaySale,
      const DeepCollectionEquality().hash(_lastOrderInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportNoSaleCustomerModelCopyWith<_$_ReportNoSaleCustomerModel>
      get copyWith => __$$_ReportNoSaleCustomerModelCopyWithImpl<
          _$_ReportNoSaleCustomerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportNoSaleCustomerModelToJson(
      this,
    );
  }
}

abstract class _ReportNoSaleCustomerModel implements ReportNoSaleCustomerModel {
  const factory _ReportNoSaleCustomerModel(
          {final String? customerCode,
          final String? customerName,
          final String? customerUnit,
          final String? lastDayVisit,
          final String? lastDatOpenSale,
          final String? lastDaySale,
          final List<ReportNoSaleOrderModel>? lastOrderInfo}) =
      _$_ReportNoSaleCustomerModel;

  factory _ReportNoSaleCustomerModel.fromJson(Map<String, dynamic> json) =
      _$_ReportNoSaleCustomerModel.fromJson;

  @override
  String? get customerCode;
  @override
  String? get customerName;
  @override
  String? get customerUnit;
  @override
  String? get lastDayVisit;
  @override
  String? get lastDatOpenSale;
  @override
  String? get lastDaySale;
  @override
  List<ReportNoSaleOrderModel>? get lastOrderInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ReportNoSaleCustomerModelCopyWith<_$_ReportNoSaleCustomerModel>
      get copyWith => throw _privateConstructorUsedError;
}

ReportNoSaleStaffModel _$ReportNoSaleStaffModelFromJson(
    Map<String, dynamic> json) {
  return _ReportNoSaleStaffModel.fromJson(json);
}

/// @nodoc
mixin _$ReportNoSaleStaffModel {
  String? get staffCode => throw _privateConstructorUsedError;
  String? get staffName => throw _privateConstructorUsedError;
  String? get staffUnit => throw _privateConstructorUsedError;
  String? get staffRoute => throw _privateConstructorUsedError;
  String? get totalCustomerNoSale => throw _privateConstructorUsedError;
  String? get volume => throw _privateConstructorUsedError;
  List<ReportNoSaleCustomerModel>? get customerList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportNoSaleStaffModelCopyWith<ReportNoSaleStaffModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportNoSaleStaffModelCopyWith<$Res> {
  factory $ReportNoSaleStaffModelCopyWith(ReportNoSaleStaffModel value,
          $Res Function(ReportNoSaleStaffModel) then) =
      _$ReportNoSaleStaffModelCopyWithImpl<$Res, ReportNoSaleStaffModel>;
  @useResult
  $Res call(
      {String? staffCode,
      String? staffName,
      String? staffUnit,
      String? staffRoute,
      String? totalCustomerNoSale,
      String? volume,
      List<ReportNoSaleCustomerModel>? customerList});
}

/// @nodoc
class _$ReportNoSaleStaffModelCopyWithImpl<$Res,
        $Val extends ReportNoSaleStaffModel>
    implements $ReportNoSaleStaffModelCopyWith<$Res> {
  _$ReportNoSaleStaffModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staffCode = freezed,
    Object? staffName = freezed,
    Object? staffUnit = freezed,
    Object? staffRoute = freezed,
    Object? totalCustomerNoSale = freezed,
    Object? volume = freezed,
    Object? customerList = freezed,
  }) {
    return _then(_value.copyWith(
      staffCode: freezed == staffCode
          ? _value.staffCode
          : staffCode // ignore: cast_nullable_to_non_nullable
              as String?,
      staffName: freezed == staffName
          ? _value.staffName
          : staffName // ignore: cast_nullable_to_non_nullable
              as String?,
      staffUnit: freezed == staffUnit
          ? _value.staffUnit
          : staffUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      staffRoute: freezed == staffRoute
          ? _value.staffRoute
          : staffRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCustomerNoSale: freezed == totalCustomerNoSale
          ? _value.totalCustomerNoSale
          : totalCustomerNoSale // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String?,
      customerList: freezed == customerList
          ? _value.customerList
          : customerList // ignore: cast_nullable_to_non_nullable
              as List<ReportNoSaleCustomerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReportNoSaleStaffModelCopyWith<$Res>
    implements $ReportNoSaleStaffModelCopyWith<$Res> {
  factory _$$_ReportNoSaleStaffModelCopyWith(_$_ReportNoSaleStaffModel value,
          $Res Function(_$_ReportNoSaleStaffModel) then) =
      __$$_ReportNoSaleStaffModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? staffCode,
      String? staffName,
      String? staffUnit,
      String? staffRoute,
      String? totalCustomerNoSale,
      String? volume,
      List<ReportNoSaleCustomerModel>? customerList});
}

/// @nodoc
class __$$_ReportNoSaleStaffModelCopyWithImpl<$Res>
    extends _$ReportNoSaleStaffModelCopyWithImpl<$Res,
        _$_ReportNoSaleStaffModel>
    implements _$$_ReportNoSaleStaffModelCopyWith<$Res> {
  __$$_ReportNoSaleStaffModelCopyWithImpl(_$_ReportNoSaleStaffModel _value,
      $Res Function(_$_ReportNoSaleStaffModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staffCode = freezed,
    Object? staffName = freezed,
    Object? staffUnit = freezed,
    Object? staffRoute = freezed,
    Object? totalCustomerNoSale = freezed,
    Object? volume = freezed,
    Object? customerList = freezed,
  }) {
    return _then(_$_ReportNoSaleStaffModel(
      staffCode: freezed == staffCode
          ? _value.staffCode
          : staffCode // ignore: cast_nullable_to_non_nullable
              as String?,
      staffName: freezed == staffName
          ? _value.staffName
          : staffName // ignore: cast_nullable_to_non_nullable
              as String?,
      staffUnit: freezed == staffUnit
          ? _value.staffUnit
          : staffUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      staffRoute: freezed == staffRoute
          ? _value.staffRoute
          : staffRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCustomerNoSale: freezed == totalCustomerNoSale
          ? _value.totalCustomerNoSale
          : totalCustomerNoSale // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String?,
      customerList: freezed == customerList
          ? _value._customerList
          : customerList // ignore: cast_nullable_to_non_nullable
              as List<ReportNoSaleCustomerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportNoSaleStaffModel implements _ReportNoSaleStaffModel {
  const _$_ReportNoSaleStaffModel(
      {this.staffCode,
      this.staffName,
      this.staffUnit,
      this.staffRoute,
      this.totalCustomerNoSale,
      this.volume,
      final List<ReportNoSaleCustomerModel>? customerList})
      : _customerList = customerList;

  factory _$_ReportNoSaleStaffModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReportNoSaleStaffModelFromJson(json);

  @override
  final String? staffCode;
  @override
  final String? staffName;
  @override
  final String? staffUnit;
  @override
  final String? staffRoute;
  @override
  final String? totalCustomerNoSale;
  @override
  final String? volume;
  final List<ReportNoSaleCustomerModel>? _customerList;
  @override
  List<ReportNoSaleCustomerModel>? get customerList {
    final value = _customerList;
    if (value == null) return null;
    if (_customerList is EqualUnmodifiableListView) return _customerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReportNoSaleStaffModel(staffCode: $staffCode, staffName: $staffName, staffUnit: $staffUnit, staffRoute: $staffRoute, totalCustomerNoSale: $totalCustomerNoSale, volume: $volume, customerList: $customerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportNoSaleStaffModel &&
            (identical(other.staffCode, staffCode) ||
                other.staffCode == staffCode) &&
            (identical(other.staffName, staffName) ||
                other.staffName == staffName) &&
            (identical(other.staffUnit, staffUnit) ||
                other.staffUnit == staffUnit) &&
            (identical(other.staffRoute, staffRoute) ||
                other.staffRoute == staffRoute) &&
            (identical(other.totalCustomerNoSale, totalCustomerNoSale) ||
                other.totalCustomerNoSale == totalCustomerNoSale) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            const DeepCollectionEquality()
                .equals(other._customerList, _customerList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      staffCode,
      staffName,
      staffUnit,
      staffRoute,
      totalCustomerNoSale,
      volume,
      const DeepCollectionEquality().hash(_customerList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportNoSaleStaffModelCopyWith<_$_ReportNoSaleStaffModel> get copyWith =>
      __$$_ReportNoSaleStaffModelCopyWithImpl<_$_ReportNoSaleStaffModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportNoSaleStaffModelToJson(
      this,
    );
  }
}

abstract class _ReportNoSaleStaffModel implements ReportNoSaleStaffModel {
  const factory _ReportNoSaleStaffModel(
          {final String? staffCode,
          final String? staffName,
          final String? staffUnit,
          final String? staffRoute,
          final String? totalCustomerNoSale,
          final String? volume,
          final List<ReportNoSaleCustomerModel>? customerList}) =
      _$_ReportNoSaleStaffModel;

  factory _ReportNoSaleStaffModel.fromJson(Map<String, dynamic> json) =
      _$_ReportNoSaleStaffModel.fromJson;

  @override
  String? get staffCode;
  @override
  String? get staffName;
  @override
  String? get staffUnit;
  @override
  String? get staffRoute;
  @override
  String? get totalCustomerNoSale;
  @override
  String? get volume;
  @override
  List<ReportNoSaleCustomerModel>? get customerList;
  @override
  @JsonKey(ignore: true)
  _$$_ReportNoSaleStaffModelCopyWith<_$_ReportNoSaleStaffModel> get copyWith =>
      throw _privateConstructorUsedError;
}
