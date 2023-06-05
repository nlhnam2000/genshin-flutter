import 'dart:async';

import 'package:flutter/material.dart';
import 'package:genshin_app/device/storage_service.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/provider/splash_provider.dart';
import 'package:genshin_app/screens/home_screen.dart';
import 'package:genshin_app/services/analytics_service.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:genshin_app/utils/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName = "SplashScreen";
  static MaterialPage page() {
    return const MaterialPage(
      child: SplashScreen(),
      name: routeName,
      key: ValueKey(routeName),
    );
  }

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  final TextEditingController textController = TextEditingController();
  // state
  bool _isShowTextField = false;
  final _analyticsService = Get.find<AnalyticsService>();

  Future<void> onStartUp() async {
    /// fetch from storage to check if there's already the url host
    /// if yes, push to home page
    /// otherwise, show a textfield to let user enter the host
    String? cachedHost = await StorageService().get(StorageConstant.savedHost);
    if (cachedHost != null) {
      Timer(
          const Duration(seconds: 3),
          () =>
              GoRouter.of(context).pushReplacementNamed(HomeScreen.routeName));
    } else {
      setState(() {
        _isShowTextField = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);

    onStartUp();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaSize = MediaQuery.of(context).size;
    var navigator = GoRouter.of(context);
    return ChangeNotifierProvider(
      create: (context) => SplashProvider(),
      builder: (context, child) => Scaffold(
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: Dimens.paddingBig),
          height: mediaSize.height,
          color: CustomColor.primaryBackground,
          // duration: const Duration(seconds: 1),
          // curve: Curves.fastOutSlowIn,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: FadeTransition(
                  opacity: animation,
                  child: Image.asset(
                    "assets/images/splash.png",
                    // width: mediaSize.width * 0.7,
                    // height: mediaSize.width * 0.7,
                  ),
                ),
              ),
              _isShowTextField
                  ? Consumer<SplashProvider>(
                      builder: (context, value, child) => Column(
                        children: [
                          TextFormField(
                            controller: value.textController,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: AppLocalizations.of(context)!
                                  .enterDeployedHost,
                              hintStyle: const TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimens.radiusMedium),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          value.connectionCheck.viewStatus == ViewStatus.loading
                              ? const CircularProgressIndicator()
                              : TextButton(
                                  onPressed: () async {
                                    final provider =
                                        context.read<SplashProvider>();
                                    await provider.testConnnection();

                                    WidgetsBinding.instance
                                        .addPostFrameCallback(
                                            (timeStamp) async {
                                      if (provider.connectionCheck.viewStatus ==
                                          ViewStatus.succeed) {
                                        bool connection =
                                            provider.connectionCheck.data!;
                                        if (connection) {
                                          await StorageService().put(
                                              StorageConstant.savedHost,
                                              textController.text);
                                          navigator
                                              .pushNamed(HomeScreen.routeName);
                                        }
                                      }
                                    });
                                  },
                                  child:
                                      Text(AppLocalizations.of(context)!.next),
                                )
                        ],
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ),
        floatingActionButton: _isShowTextField
            ? TextButton(
                onPressed: () async {
                  navigator.pushNamed(HomeScreen.routeName);
                  await _analyticsService.logLogin();
                },
                child: Text(AppLocalizations.of(context)!.useLocalhost))
            : const SizedBox(),
      ),
    );
  }
}
