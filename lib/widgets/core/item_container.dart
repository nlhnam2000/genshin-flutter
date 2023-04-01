import 'package:flutter/material.dart';
import 'package:genshin_app/widgets/core/item_avatar.dart';

class ItemContainer extends StatelessWidget {
  final String itemName;
  final String itemRarity;
  final String? source;
  const ItemContainer({
    Key? key,
    required this.itemName,
    required this.itemRarity,
    this.source,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ItemAvatar(
            source: source,
            rarity: itemRarity,
          ),
          Text(
            itemName,
            style: const TextStyle(fontWeight: FontWeight.w600),
            // maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
