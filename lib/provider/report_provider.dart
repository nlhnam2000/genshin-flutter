import 'package:flutter/material.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/models/report_no_sale.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:genshin_app/repository/abstract/report_repo.dart';
import 'package:genshin_app/repository/impl/report_repo_impl.dart';
import 'package:get/get.dart';
import 'package:flutter_core/bases/exceptions.dart';

class ReportProvider extends BaseProvider {
  BaseProviderModel<List<ReportNoSaleStaffModel>> staffData =
      BaseProviderModel.init(data: []);
  final ReportRepo reportRepo = Get.find<ReportRepo>(tag: ReportRepoImpl.tag);

  RangeValues saleRangeValues = const RangeValues(0, 0);
  late RangeLabels saleRangeLabels;
  int division = 0;

  Future<void> getStaffList() async {
    staffData = BaseProviderModel.loading();
    notifyListeners();

    try {
      final response = await reportRepo.getStaffList();
      staffData = BaseProviderModel.succeed(response);
      initRangeValues(RangeValues(minLastDaySaleRange, maxLastDaySaleRange));
    } on Exception catch (error) {
      staffData =
          BaseProviderModel.failed(ServerResponseError(error.toString()));
    } finally {
      notifyListeners();
    }
  }

  void initRangeValues(RangeValues range) {
    saleRangeValues = range;
    saleRangeLabels = RangeLabels(saleRangeValues.start.round().toString(),
        saleRangeValues.end.round().toString());
    division = saleRangeValues.end ~/ saleRangeValues.start;
    notifyListeners();
  }

  void setSaleRangeValues(RangeValues range) {
    saleRangeValues = range;
    saleRangeLabels = RangeLabels(saleRangeValues.start.round().toString(),
        saleRangeValues.end.round().toString());
    notifyListeners();
  }

  // int get division {
  //   double gap = maxLastDaySaleRange / minLastDaySaleRange;
  //   return gap.toInt();
  // }

  double get maxLastDaySaleRange {
    if (staffData.data != null) {
      double max = getMaxSaleOfStaff(staffData.data!.first);
      for (var staff in staffData.data!) {
        double maxSaleOfStaff = getMaxSaleOfStaff(staff);
        if (maxSaleOfStaff > max) {
          max = maxSaleOfStaff;
        }
      }

      return max;
    }

    return 0;
  }

  double get minLastDaySaleRange {
    if (staffData.data != null) {
      double min = getMinSaleOfStaff(staffData.data!.first);
      for (var staff in staffData.data!) {
        double minSaleOfStaff = getMinSaleOfStaff(staff);
        if (minSaleOfStaff < min) {
          min = minSaleOfStaff;
        }
      }

      return min;
    }

    return 0;
  }

  double getMinSaleOfStaff(ReportNoSaleStaffModel staff) {
    double min = double.parse(staff.customerList!.first.lastDaySale!);
    for (int i = 1; i < staff.customerList!.length; i++) {
      double sale = double.parse(staff.customerList![i].lastDaySale!);
      if (sale < min) {
        min = sale;
      }
    }

    return min;
  }

  double getMaxSaleOfStaff(ReportNoSaleStaffModel staff) {
    double max = double.parse(staff.customerList!.first.lastDaySale!);
    for (int i = 1; i < staff.customerList!.length; i++) {
      double sale = double.parse(staff.customerList![i].lastDaySale!);
      if (sale > max) {
        max = sale;
      }
    }

    return max;
  }
}
