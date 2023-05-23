import 'package:flutter/material.dart';
import 'package:genshin_app/models/base_provider_model.dart';

class BaseProviderWidget extends StatelessWidget {
  final BaseProviderModel baseProviderModel;
  final Widget childWhenSuceed;
  const BaseProviderWidget({
    Key? key,
    required this.baseProviderModel,
    required this.childWhenSuceed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (baseProviderModel.viewStatus == ViewStatus.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (baseProviderModel.viewStatus == ViewStatus.failed) {
      return Center(
        child: Text(baseProviderModel.errorMessage.toString()),
      );
    }
    return childWhenSuceed;
  }
}
