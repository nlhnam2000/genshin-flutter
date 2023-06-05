import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genshin_app/provider/report_provider.dart';
import 'package:genshin_app/screens/base_provider_widget.dart';
import 'package:genshin_app/screens/test/report_no_sale/widgets/filter_sheet.dart';
import 'package:genshin_app/screens/test/report_no_sale/widgets/staff_item.dart';
import 'package:genshin_app/utils/device_utils.dart';
import 'package:provider/provider.dart';

class ReportNoSaleScreen extends StatelessWidget {
  const ReportNoSaleScreen({Key? key}) : super(key: key);

  static const String routeName = "ReportNoSaleScreen";
  static CupertinoPage page() {
    return const CupertinoPage(
      name: routeName,
      key: ValueKey(routeName),
      child: ReportNoSaleScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: buildContent(context),
      floatingActionButton: buildButton(context),
    );
  }

  Widget buildContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Consumer<ReportProvider>(
        builder: (context, value, child) => BaseProviderWidget(
          baseProviderModel: value.staffData,
          childWhenSuceed: Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) =>
                  StaffItem(staffData: value.staffData.data![index]),
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: value.staffData.data != null
                  ? value.staffData.data!.length
                  : 0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context) {
    return Builder(
      builder: (context) => ElevatedButton(
        onPressed: () {
          DeviceUtils.showBottomSheet(context, FilterSheet());
        },
        child: const Text("Open sheet"),
      ),
    );
  }
}
