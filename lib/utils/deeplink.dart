import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:genshin_app/main.dart';
import 'package:go_router/go_router.dart';

class DeeplinkService {
  DeeplinkService._();
  static final DeeplinkService _instance = DeeplinkService._();
  static DeeplinkService get instance => _instance;

  BranchContentMetaData metadata = BranchContentMetaData();
  BranchUniversalObject? buo;
  BranchLinkProperties lp = BranchLinkProperties();
  BranchEvent? eventStandart;
  BranchEvent? eventCustom;
  StreamSubscription<Map>? streamSubscription;
  StreamController<String> controllerData = StreamController<String>();
  StreamController<String> controllerInitSession = StreamController<String>();

  void dispose() {
    controllerData.close();
    controllerInitSession.close();
    streamSubscription?.cancel();
  }

  void initDeeplink() {
    buo = BranchUniversalObject(
      canonicalIdentifier: 'genshindb/branch',
      canonicalUrl: "https://google.com",
      title: "Genshin DB deeplinking",
      contentDescription: "Content description",
      contentMetadata: metadata,
      publiclyIndex: true,
      locallyIndex: true,
      expirationDateInMilliSec:
          DateTime.now().add(const Duration(days: 365)).millisecondsSinceEpoch,
    );

    lp = BranchLinkProperties(
      channel: 'genshindb',
      feature: 'routing',
    );
  }

  void listenDeeplink() async {
    streamSubscription = FlutterBranchSdk.initSession().listen((data) {
      print("listenDeeplink: $data");
      controllerData.sink.add(data.toString());
      if (data.containsKey('+clicked_branch_link') &&
          data["+clicked_branch_link"]) {
        final path = data['path'].toString();
        GoRouter.of(navigatorKey.currentContext!).push(path);
      }
    }, onError: (error) {
      print("init session error: $error");
    });
  }

  void generateDeeplink(BuildContext context, String path) async {
    BranchResponse response = await FlutterBranchSdk.getShortUrl(
        buo: buo!, linkProperties: lp..addControlParam("path", path));
    if (response.success) {
      print("Generated link of $path: ${response.result}");
    } else {
      print("Generate link for $path failed");
    }
  }
}
