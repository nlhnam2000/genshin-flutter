import 'package:genshin_app/models/weapon_general_model.dart';

abstract class WeaponRepo {
  Future<List<WeaponGeneralModel>> getAllWeapons();
}
