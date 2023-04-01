import 'package:flutter/material.dart';
import 'package:genshin_app/models/combat_model.dart';
import 'package:genshin_app/network/api_path.dart';
import 'package:genshin_app/utils/core_utils.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:genshin_app/utils/constants.dart';

class TalentItem extends StatelessWidget {
  final CombatModel combat;
  final String element;
  final String? imagePath;
  const TalentItem({
    Key? key,
    required this.combat,
    required this.element,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.paddingMedium),
      decoration: BoxDecoration(
        color: CustomColor.secondaryBackground,
        borderRadius: BorderRadius.circular(Dimens.radiusBigger),
      ),
      child: ExpansionTile(
        leading: CircleAvatar(
          backgroundColor: getCharacterImageBackground(element, true),
          child: Image.network(
            "${ApiPath.baseImageHost}$imagePath",
          ),
        ),
        textColor: Colors.white,
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        collapsedTextColor: Colors.white,
        title: Text(
          combat.name!,
        ),
        children: [
          Text(combat.info!),
        ],
      ),
    );
  }
}
