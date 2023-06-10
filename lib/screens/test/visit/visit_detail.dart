import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisitDetail extends StatelessWidget {
  final String name;
  const VisitDetail({
    Key? key,
    required this.name,
  }) : super(key: key);

  static const String routeName = "VisitDetail";
  static CupertinoPage page({required String name}) {
    return CupertinoPage(
        name: routeName,
        key: ValueKey(routeName),
        child: VisitDetail(
          name: name,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(name)],
      ),
    );
  }
}
