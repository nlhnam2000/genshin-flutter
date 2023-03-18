import 'package:genshin_app/models/combat_model.dart';
import 'package:genshin_app/models/image_model.dart';

class CombatResponseModel {
  final List<CombatModel> combats;
  final ImageModel images;

  const CombatResponseModel(this.combats, this.images);
}
