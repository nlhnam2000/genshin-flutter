import 'package:flutter/material.dart';
import 'package:genshin_app/utils/constants.dart';

class RarityWidget extends StatelessWidget {
  final String rarity;
  const RarityWidget({
    Key? key,
    required this.rarity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < int.parse(rarity); i++) ...[
          const Padding(
            padding: EdgeInsets.all(2),
            child: Icon(
              Icons.star,
              color: Colors.yellow,
              size: 15,
            ),
          ),
        ]
      ],
    );
  }
}
