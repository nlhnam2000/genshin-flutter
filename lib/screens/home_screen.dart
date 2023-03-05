import 'package:flutter/material.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/provider/character_provider.dart';
import 'package:genshin_app/screens/character_screen.dart';
import 'package:genshin_app/screens/widgets/search_text_field.dart';
import 'package:genshin_app/utils/colors.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => CharacterProvider()))
      ],
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: CustomColor.primaryBackground,
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            actions: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _showSearch = !_showSearch;
                    });
                  },
                  icon: const Icon(Icons.search))
            ],
            backgroundColor: CustomColor.primaryBackground,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(_showSearch ? 80 : 40),
              child: Consumer<CharacterProvider>(
                builder: (context, value, child) => Column(
                  children: [
                    _showSearch
                        ? Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: SearchTextField<Character>(
                              hintText: "Search for character",
                              controller: searchController,
                              items: value.characterList,
                              itemAsResult: (item) => item.name,
                              onSelected: (value) =>
                                  searchController.text = value.name,
                              spacing: 8,
                              // limitHeight:
                              //     MediaQuery.of(context).size.height * 0.4,
                              isScrollable: true,
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
            children: [CharacterScreen(), CharacterScreen(), CharacterScreen()],
          ),
        ),
      ),
    );
  }
}
