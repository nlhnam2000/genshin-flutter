import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:genshin_app/models/image_model.dart';

part 'generated/report_no_sale.freezed.dart';
part 'generated/report_no_sale.g.dart';

@freezed
class ReportNoSaleOrderModel with _$ReportNoSaleOrderModel {
  const factory ReportNoSaleOrderModel({
    String? invoiceCode,
    String? status,
    String? price,
    int? skus,
    String? submitOrderDay,
  }) = _ReportNoSaleOrderModel;

  factory ReportNoSaleOrderModel.fromJson(Map<String, Object?> json) =>
      _$ReportNoSaleOrderModelFromJson(json);
}

@freezed
class ReportNoSaleCustomerModel with _$ReportNoSaleCustomerModel {
  const factory ReportNoSaleCustomerModel({
    String? customerCode,
    String? customerName,
    String? customerUnit,
    String? lastDayVisit,
    String? lastDatOpenSale,
    String? lastDaySale,
    List<ReportNoSaleOrderModel>? lastOrderInfo,
  }) = _ReportNoSaleCustomerModel;

  factory ReportNoSaleCustomerModel.fromJson(Map<String, Object?> json) =>
      _$ReportNoSaleCustomerModelFromJson(json);
}

@freezed
class ReportNoSaleStaffModel with _$ReportNoSaleStaffModel {
  const factory ReportNoSaleStaffModel({
    String? staffCode,
    String? staffName,
    String? staffUnit,
    String? staffRoute,
    String? totalCustomerNoSale,
    String? volume,
    List<ReportNoSaleCustomerModel>? customerList,
  }) = _ReportNoSaleStaffModel;

  factory ReportNoSaleStaffModel.fromJson(Map<String, Object?> json) =>
      _$ReportNoSaleStaffModelFromJson(json);
}
