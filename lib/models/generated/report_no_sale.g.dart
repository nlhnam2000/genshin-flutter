// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../report_no_sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportNoSaleOrderModel _$$_ReportNoSaleOrderModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReportNoSaleOrderModel(
      invoiceCode: json['invoiceCode'] as String?,
      status: json['status'] as String?,
      price: json['price'] as String?,
      skus: json['skus'] as int?,
      submitOrderDay: json['submitOrderDay'] as String?,
    );

Map<String, dynamic> _$$_ReportNoSaleOrderModelToJson(
        _$_ReportNoSaleOrderModel instance) =>
    <String, dynamic>{
      'invoiceCode': instance.invoiceCode,
      'status': instance.status,
      'price': instance.price,
      'skus': instance.skus,
      'submitOrderDay': instance.submitOrderDay,
    };

_$_ReportNoSaleCustomerModel _$$_ReportNoSaleCustomerModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReportNoSaleCustomerModel(
      customerCode: json['customerCode'] as String?,
      customerName: json['customerName'] as String?,
      customerUnit: json['customerUnit'] as String?,
      lastDayVisit: json['lastDayVisit'] as String?,
      lastDatOpenSale: json['lastDatOpenSale'] as String?,
      lastDaySale: json['lastDaySale'] as String?,
      lastOrderInfo: (json['lastOrderInfo'] as List<dynamic>?)
          ?.map(
              (e) => ReportNoSaleOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReportNoSaleCustomerModelToJson(
        _$_ReportNoSaleCustomerModel instance) =>
    <String, dynamic>{
      'customerCode': instance.customerCode,
      'customerName': instance.customerName,
      'customerUnit': instance.customerUnit,
      'lastDayVisit': instance.lastDayVisit,
      'lastDatOpenSale': instance.lastDatOpenSale,
      'lastDaySale': instance.lastDaySale,
      'lastOrderInfo': instance.lastOrderInfo,
    };

_$_ReportNoSaleStaffModel _$$_ReportNoSaleStaffModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReportNoSaleStaffModel(
      staffCode: json['staffCode'] as String?,
      staffName: json['staffName'] as String?,
      staffUnit: json['staffUnit'] as String?,
      staffRoute: json['staffRoute'] as String?,
      totalCustomerNoSale: json['totalCustomerNoSale'] as String?,
      volume: json['volume'] as String?,
      customerList: (json['customerList'] as List<dynamic>?)
          ?.map((e) =>
              ReportNoSaleCustomerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReportNoSaleStaffModelToJson(
        _$_ReportNoSaleStaffModel instance) =>
    <String, dynamic>{
      'staffCode': instance.staffCode,
      'staffName': instance.staffName,
      'staffUnit': instance.staffUnit,
      'staffRoute': instance.staffRoute,
      'totalCustomerNoSale': instance.totalCustomerNoSale,
      'volume': instance.volume,
      'customerList': instance.customerList,
    };
