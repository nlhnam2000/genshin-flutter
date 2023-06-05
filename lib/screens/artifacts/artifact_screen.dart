import 'package:flutter/material.dart';
import 'package:genshin_app/provider/artifact_provider.dart';
import 'package:genshin_app/screens/base_provider_widget.dart';
import 'package:genshin_app/widgets/core/item_container.dart';
import 'package:provider/provider.dart';

class ArtifactScreen extends StatelessWidget {
  const ArtifactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ArtifactProvider>(
      builder: (context, value, child) => BaseProviderWidget(
        baseProviderModel: value.generalArtifactList,
        childWhenSuceed: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: const BoxDecoration(
              //color: CustomColor.secondaryBackground,
              ),
          width: double.infinity,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.9),
            itemCount: value.generalArtifactList.data?.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                // onTap: () => GoRouter.of(context).pushNamed(
                //   CharacterDetail.routeName,
                //   params: {
                //     "name": value.characterList.data![index].name ?? "",
                //   },
                //   extra: value.characterList.data![index],
                // ),
                child: ItemContainer(
                  itemName: value.generalArtifactList.data?[index].name ?? "",
                  itemRarity: "5",
                  source: value.generalArtifactList.data?[index].image,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
