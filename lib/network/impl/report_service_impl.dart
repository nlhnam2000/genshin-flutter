import 'package:flutter/services.dart';
import 'package:genshin_app/network/abstract/report_service.dart';

class ReportServiceImpl implements ReportService {
  static const String tag = "ReportServiceImpl";
  @override
  Future<String> getStaffList() async {
    return await rootBundle.loadString("assets/data/report_no_sale.json");
  }
}
