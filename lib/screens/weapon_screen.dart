import 'package:flutter/material.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/provider/weapon_general_provider.dart';
import 'package:genshin_app/widgets/core/item_avatar.dart';
import 'package:genshin_app/widgets/core/item_container.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class WeaponScreen extends StatelessWidget {
  const WeaponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WeaponGeneralProvider>(
      builder: (context, value, child) {
        if (value.weaponData.viewStatus == ViewStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Container(
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
              childAspectRatio: 0.9,
            ),
            itemCount: value.weaponData.data!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: ItemContainer(
                  source: value.weaponData.data![index].images!.icon ??
                      value.weaponData.data![index].images!.card ??
                      value.weaponData.data![index].images!.cover1 ??
                      "",
                  itemRarity: value.weaponData.data![index].rarity ?? "1",
                  itemName: value.weaponData.data![index].name ?? "",
                ),
              );
            },
          ),
        );
      },
    );
  }
}
