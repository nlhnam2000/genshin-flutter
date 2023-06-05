import 'package:flutter/material.dart';
import 'package:genshin_app/utils/constants.dart';

class DeviceUtils {
  static Future<void> showBottomSheet(
      BuildContext context, Widget child) async {
    await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.radiusMedium + 2)),
      useRootNavigator: false,
      builder: (context) => child,
    );
  }
}
