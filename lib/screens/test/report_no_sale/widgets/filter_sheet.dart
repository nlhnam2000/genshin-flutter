import 'package:flutter/material.dart';
import 'package:genshin_app/provider/report_provider.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:genshin_app/utils/constants.dart';
import 'package:genshin_app/widgets/core/buttons.dart';
import 'package:provider/provider.dart';

class FilterSheet extends StatefulWidget {
  const FilterSheet({Key? key}) : super(key: key);

  @override
  _FilterSheetState createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {
  List<String> unitList = [
    "Viettel",
    "Viettel Solution",
    "Viettel your way",
  ];
  List<String> staffList = [
    "Nhân viên 1",
    "Nhân viên 2",
    "Nhân viên 3",
    "Nhân viên 4",
    "Nhân viên 5",
  ];

  RangeValues currentRange = const RangeValues(200000, 10000000000);

  @override
  Widget build(BuildContext context) {
    return Consumer<ReportProvider>(
      builder: (context, provider, child) => Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: CustomColor.secondaryBackground,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const Center(
                    child: Text("Lọc theo"),
                  ),
                  Positioned(
                    top: -12,
                    right: 0,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.close,
                      ),
                    ),
                  ),
                ],
              ),

              // Đơn vị
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Đơn vị",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for (int i = 0; i < unitList.length; i++)
                        FilterItem(label: unitList[i]),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
              ),

              // Nhân viên
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nhân viên",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for (int i = 0; i < staffList.length; i++)
                        FilterItem(label: staffList[i]),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
              ),

              // Doanh số ngày cuối
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Doanh số ngày cuối",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RangeSlider(
                    min: provider.minLastDaySaleRange,
                    max: provider.maxLastDaySaleRange,
                    values: provider.saleRangeValues,
                    divisions: 10,
                    onChanged: (value) {
                      debugPrint(value.toString());
                      // setState(() {
                      //   currentRange = value;
                      // });
                      provider.setSaleRangeValues(value);
                    },
                    labels: provider.saleRangeLabels,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(provider.minLastDaySaleRange.toString()),
                      Text(provider.maxLastDaySaleRange.toString()),
                    ],
                  )
                ],
              ),
              const Divider(
                color: Colors.white,
              ),

              // Tổng số KH chưa có doanh số
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tổng số KH chưa có doanh số",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RangeSlider(
                    min: 200000,
                    max: 10000000000,
                    values: currentRange,
                    // divisions: 10,
                    onChanged: (value) {
                      // debugPrint(value.toString());
                      setState(() {
                        currentRange = value;
                      });
                    },
                    labels: RangeLabels(currentRange.start.round().toString(),
                        currentRange.end.round().toString()),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(provider.minLastDaySaleRange.toString()),
                  //     Text(provider.maxLastDaySaleRange.toString()),
                  //   ],
                  // )
                ],
              ),
              const Divider(
                color: Colors.white,
              ),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SecondaryButton(
                    title: "Thiết lập lại",
                    onPressed: () {},
                  ),
                  PrimaryButton(
                    title: "Lọc",
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function(String item)? onSelected;
  const FilterItem({
    Key? key,
    required this.label,
    this.isSelected = false,
    this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onSelected != null) {
          onSelected!(label);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(Dimens.paddingMedium),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.blue),
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: isSelected ? Colors.blue : Colors.white,
              ),
        ),
      ),
    );
  }
}
