import 'package:genshin_app/models/report_no_sale.dart';

abstract class ReportRepo {
  Future<List<ReportNoSaleStaffModel>> getStaffList();
}
