import 'package:flutter/material.dart';
import 'package:genshin_app/models/combat_model.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:genshin_app/utils/constants.dart';

class TalentItem extends StatelessWidget {
  final CombatModel combat;
  const TalentItem({
    Key? key,
    required this.combat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.paddingMedium),
      decoration: BoxDecoration(
        color: CustomColor.secondaryBackground,
        borderRadius: BorderRadius.circular(Dimens.radiusBigger),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: CustomColor.geoBackground,
            child: Icon(Icons.usb),
          ),
          Expanded(
            child: ListTile(
              title: Text(
                combat.name!,
              ),
              // subtitle: Text(combat.info!),
            ),
          ),
        ],
      ),
    );
  }
}
