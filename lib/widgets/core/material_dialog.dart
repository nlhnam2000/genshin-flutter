import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_app/models/ascension_model.dart';
import 'package:genshin_app/models/material_model.dart';
import 'package:genshin_app/network/api_path.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:genshin_app/utils/constants.dart';
import 'package:genshin_app/utils/core_utils.dart';
import 'package:genshin_app/widgets/core/rarity_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MaterialDialog extends StatelessWidget {
  final AscensionModel material;
  const MaterialDialog({
    Key? key,
    required this.material,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.7,
        ),
        color: CustomColor.materialWhiteBackground,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(context),
            buildHeaderImage(context),
            buildDescription(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.paddingMedium,
        vertical: Dimens.paddingSmall,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: getItemColorBackground(material.rarity),
        ),
      ),
      child: Text(
        material.name ?? "",
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }

  Widget buildHeaderImage(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(Dimens.paddingMedium),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: getItemColorBackground(material.rarity),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: SizedBox(
              height: mediaQuery.width * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    material.materialtype ?? "",
                    maxLines: 2,
                  ),
                  material.rarity != null
                      ? RarityWidget(rarity: material.rarity!)
                      : Container(),
                ],
              ),
            ),
          ),
          CachedNetworkImage(
            imageUrl: "${ApiPath.baseImageHost}${material.images!.nameicon}",
            width: mediaQuery.width * 0.2,
            height: mediaQuery.width * 0.2,
          )
        ],
      ),
    );
  }

  Widget buildDescription(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.paddingBig,
        vertical: Dimens.paddingBig,
      ),
      decoration: const BoxDecoration(
        color: CustomColor.materialWhiteBackground,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            material.description ?? "",
            style: const TextStyle(
              color: CustomColor.primaryBackground,
            ),
          ),
          buildSource(context, source: material.source ?? []),
        ],
      ),
    );
  }

  Widget buildSource(BuildContext context, {required List<String> source}) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimens.paddingBigger,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.pin_drop_outlined,
                color: CustomColor.primaryBackground,
              ),
              Text(
                AppLocalizations.of(context)?.source ?? "",
                style: const TextStyle(
                  color: CustomColor.primaryBackground,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          for (int i = 0; i < source.length; i++) ...[
            Padding(
              padding: EdgeInsets.only(
                top: Dimens.paddingMedium,
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(Dimens.paddingSmall),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: CustomColor.primaryBackground,
                    width: 1,
                  ),
                ),
                child: Text(
                  source[i],
                  style: const TextStyle(
                    color: CustomColor.primaryBackground,
                  ),
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
