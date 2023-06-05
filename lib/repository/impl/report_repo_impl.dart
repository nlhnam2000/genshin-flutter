import 'dart:convert';

import 'package:genshin_app/models/report_no_sale.dart';
import 'package:genshin_app/network/abstract/report_service.dart';
import 'package:genshin_app/network/impl/report_service_impl.dart';
import 'package:genshin_app/repository/abstract/report_repo.dart';
import 'package:get/get.dart';

class ReportRepoImpl implements ReportRepo {
  static const String tag = "ReportRepoImpl";

  final ReportService _reportService =
      Get.find<ReportService>(tag: ReportServiceImpl.tag);
  @override
  Future<List<ReportNoSaleStaffModel>> getStaffList() async {
    final response = await _reportService.getStaffList();
    final decoded = jsonDecode(response);

    return decoded
        .map<ReportNoSaleStaffModel>(
            (item) => ReportNoSaleStaffModel.fromJson(item))
        .toList();
  }
}
