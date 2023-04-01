import 'package:flutter/material.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/provider/character_provider.dart';
import 'package:genshin_app/screens/character_detail.dart';
import 'package:genshin_app/screens/character_screen.dart';
import 'package:genshin_app/screens/weapon_screen.dart';
import 'package:genshin_app/screens/widgets/search_text_field.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:genshin_app/utils/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showSearch = false;
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // backgroundColor: CustomColor.primaryBackground,
        appBar: AppBar(
          leading: const Icon(Icons.menu),
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
                            onSelected: (value) {
                              GoRouter.of(context).pushNamed(
                                  CharacterDetail.routeName,
                                  params: {
                                    "name": value,
                                  });
                              setState(() {
                                _showSearch = false;
                              });
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
                    tabs: const [
                      Tab(
                        child: Text("Characters"),
                      ),
                      Tab(
                        child: Text("Weapons"),
                      ),
                      Tab(
                        child: Text("Artifacts"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [CharacterScreen(), WeaponScreen(), CharacterScreen()],
        ),
      ),
    );
  }
}
