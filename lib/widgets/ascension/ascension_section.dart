import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_app/models/ascension_model.dart';
import 'package:genshin_app/network/api_path.dart';
import 'package:genshin_app/utils/constants.dart';
import 'dart:math';

class AscensionSection extends StatelessWidget {
  final List<AscensionModel> ascensionList;
  const AscensionSection({
    Key? key,
    required this.ascensionList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.paddingMedium),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < ascensionList.length; i++) ...[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Dimens.paddingMedium,
                    horizontal: Dimens.paddingMedium,
                  ),
                  child: AscensionItem(
                    ascension: ascensionList[i],
                  ),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}

class AscensionItem extends StatelessWidget {
  final AscensionModel ascension;
  const AscensionItem({Key? key, required this.ascension}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: "${ApiPath.baseImageHost}${ascension.images!.nameicon}",
          // width: MediaQuery.of(context).size.width * 0.15,
          // height: MediaQuery.of(context).size.width * 0.15,
        ),
        Text(ascension.count.toString()),
      ],
    );
  }
}
