import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/provider/ascension_provider.dart';
import 'package:genshin_app/provider/detail_character_provider.dart';
import 'package:genshin_app/provider/talent_provider.dart';
import 'package:genshin_app/utils/constants.dart';
import 'package:genshin_app/utils/deeplink.dart';
import 'package:genshin_app/widgets/ascension/ascension_section.dart';
import 'package:genshin_app/widgets/core/change_quantity.dart';
import 'package:genshin_app/widgets/core/genshindb_page.dart';
import 'package:genshin_app/widgets/core/info_section.dart';
import 'package:genshin_app/widgets/core/talent_item.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CharacterDetail extends StatefulWidget {
  final String name;
  const CharacterDetail({Key? key, required this.name}) : super(key: key);

  static const routeName = "character_detail";
  static const pathName = "/character/:name";
  static CupertinoPage page({required String name}) {
    return CupertinoPage(
      name: routeName,
      key: const ValueKey(routeName),
      child: CharacterDetail(
        name: name,
      ),
    );
  }

  @override
  State<CharacterDetail> createState() => _CharacterDetailState();
}

class _CharacterDetailState extends State<CharacterDetail> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final GoRouterState state = GoRouterState.of(context);
      DeeplinkService.instance.generateDeeplink(context, state.location);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TalentProvider()..getTalents(name: widget.name),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              DetailCharacterProvider()..getCharacterDetail(name: widget.name),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              AscensionProvider()..getAscension(name: widget.name),
        ),
      ],
      builder: (context, child) => Scaffold(
        body: Consumer3<DetailCharacterProvider, TalentProvider,
            AscensionProvider>(
          builder: (context, detailCharProvider, talentProvider, ascendProvider,
              child) {
            if (detailCharProvider.characterData.viewStatus ==
                ViewStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (detailCharProvider.characterData.viewStatus ==
                ViewStatus.succeed) {
              return GenshindbPage(
                character: detailCharProvider.characterData.data!,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InfoSection(
                        title: AppLocalizations.of(context)!.biography,
                        content: Text(
                            detailCharProvider.characterData.data!.description),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Builder(
                        builder: (context) {
                          if (talentProvider.data.viewStatus ==
                              ViewStatus.succeed) {
                            return InfoSection(
                              title:
                                  AppLocalizations.of(context)!.specialAbility,
                              content: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  for (int index = 0;
                                      index <
                                          talentProvider
                                              .data.data!.combats.length;
                                      index++) ...[
                                    TalentItem(
                                      combat: talentProvider
                                          .data.data!.combats[index],
                                      element: detailCharProvider
                                          .characterData.data!.element,
                                      imagePath: talentProvider
                                              .data.data!.images
                                              .getCombatImage(index + 1) ??
                                          "",
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ]
                                ],
                              ),
                            );
                          }

                          return Container();
                        },
                      ),
                      Builder(
                        builder: (context) {
                          if (ascendProvider.ascensionData.viewStatus ==
                              ViewStatus.succeed) {
                            return Container(
                              alignment: Alignment.center,
                              margin:
                                  EdgeInsets.only(bottom: Dimens.paddingMedium),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  AscensionSection(
                                      ascensionList: ascendProvider
                                              .ascensionData.data![
                                          ascendProvider.currentAscension - 1]),
                                  Center(
                                    child: ChangeQuantity(
                                      onChangeQuantity: (newQuantity) {
                                        context
                                            .read<AscensionProvider>()
                                            .setCurrentAsension(newQuantity);
                                      },
                                      initalData: 1,
                                      minData: 1,
                                      maxData: 6,
                                    ),
                                  )
                                ],
                              ),
                            );
                          }

                          return Container();
                        },
                      )
                    ],
                  ),
                ),
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}
