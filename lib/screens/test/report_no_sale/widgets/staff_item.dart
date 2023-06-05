import 'package:flutter/material.dart';
import 'package:genshin_app/models/report_no_sale.dart';
import 'package:genshin_app/utils/colors.dart';

class StaffItem extends StatelessWidget {
  final ReportNoSaleStaffModel staffData;
  const StaffItem({
    Key? key,
    required this.staffData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: CustomColor.secondaryBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${staffData.staffCode} - ${staffData.staffName}",
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Đơn vị: ${staffData.staffUnit}"),
          const SizedBox(
            height: 10,
          ),
          Text("Tuyến: ${staffData.staffRoute}"),
          const SizedBox(
            height: 10,
          ),
          Text("Tổng KH chưa có doanh số: ${staffData.totalCustomerNoSale}"),
          const SizedBox(
            height: 10,
          ),
          Text("Tỷ trọng: ${staffData.volume}"),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
