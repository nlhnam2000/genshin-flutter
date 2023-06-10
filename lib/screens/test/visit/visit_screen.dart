import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genshin_app/models/customer_visit_model.dart';
import 'package:genshin_app/provider/visit_provider.dart';
import 'package:genshin_app/screens/test/visit/visit_detail.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:genshin_app/widgets/core/buttons.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class VisitScreen extends StatelessWidget {
  const VisitScreen({Key? key}) : super(key: key);

  static const String routeName = "VisitScreen";
  static CupertinoPage page() {
    return CupertinoPage(
      name: routeName,
      key: const ValueKey(routeName),
      child: ChangeNotifierProvider(
        create: (context) => VisitProvider(),
        builder: (context, child) => const VisitScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<VisitProvider>(
      builder: (context, provider, child) => Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => VisitItem(
                          customer: provider.data[index],
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                    itemCount: provider.data.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VisitItem extends StatelessWidget {
  final CustomerVisitModel customer;
  const VisitItem({
    Key? key,
    required this.customer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<VisitProvider>(
      builder: (context, provider, child) => GestureDetector(
        onTap: () => GoRouter.of(context)
            .pushNamed(VisitDetail.routeName, params: {"name": customer.name}),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: CustomColor.secondaryBackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              provider.visitingCustomer == customer
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: CustomColor.secondaryBackground2),
                          child: Text(provider.elapsedTime),
                        )
                      ],
                    )
                  : const SizedBox(),
              const SizedBox(
                height: 10,
              ),
              Text(customer.name),
              const SizedBox(
                height: 10,
              ),
              Text(customer.age.toString()),
              const SizedBox(
                height: 10,
              ),
              Text(customer.address),
              const SizedBox(
                height: 10,
              ),
              Text(customer.distance.toString()),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  provider.visitingCustomer == customer
                      ? SecondaryButton(
                          title: "Xong",
                          onPressed: () => provider.unvisit(customer),
                        )
                      : const SizedBox(),
                  PrimaryButton(
                    title: "Ghé thăm",
                    onPressed: () {
                      provider.visit(customer);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
