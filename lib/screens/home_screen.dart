import 'package:flutter/material.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/provider/character_provider.dart';
import 'package:genshin_app/screens/artifacts/artifact_screen.dart';
import 'package:genshin_app/screens/characters/character_detail.dart';
import 'package:genshin_app/screens/characters/character_screen.dart';
import 'package:genshin_app/screens/weapons/weapon_screen.dart';
import 'package:genshin_app/screens/widgets/search_text_field.dart';
import 'package:genshin_app/services/analytics_service.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:genshin_app/utils/constants.dart';
import 'package:genshin_app/widgets/core/home_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = "HomeScreen";
  static MaterialPage page() {
    return const MaterialPage(
        child: HomeScreen(), name: routeName, key: ValueKey(routeName));
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showSearch = false;
  final TextEditingController searchController = TextEditingController();
  final analyticService = Get.find<AnalyticsService>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const HomeDrawer(),
        appBar: AppBar(
          // leading: const Icon(Icons.menu),
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _showSearch = !_showSearch;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(right: Dimens.paddingBigger),
                child: const Icon(Icons.search),
              ),
            )
          ],
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(_showSearch ? 80 : 40),
            child: Consumer<CharacterProvider>(
              builder: (context, value, child) => Column(
                children: [
                  _showSearch
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SearchTextField<String>(
                            hintText: "Search for character",
                            controller: searchController,
                            items: value.searchResult.viewStatus !=
                                    ViewStatus.succeed
                                ? []
                                : value.searchResult.data!,
                            itemAsResult: (item) => item,
                            onSelected: (value) async {
                              GoRouter.of(context).pushNamed(
                                  CharacterDetail.routeName,
                                  params: {
                                    "name": value,
                                  });
                              setState(() {
                                _showSearch = false;
                              });
                              await analyticService.logSearchEvent(value);
                            },
                            spacing: 8,
                            isScrollable: true,
                            onChanged: (value) {
                              context
                                  .read<CharacterProvider>()
                                  .searchCharacters(keyword: value);
                            },
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 7,
                  ),
                  TabBar(
                    indicator: ShapeDecoration(
                      color: CustomColor.secondaryBackground,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    splashBorderRadius: BorderRadius.circular(20),
                    tabs: [
                      Tab(
                        child: Text(AppLocalizations.of(context)!.character),
                      ),
                      Tab(
                        child: Text(AppLocalizations.of(context)!.weapon),
                      ),
                      Tab(
                        child: Text(AppLocalizations.of(context)!.artifact),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [CharacterScreen(), WeaponScreen(), ArtifactScreen()],
        ),
      ),
    );
  }
}
