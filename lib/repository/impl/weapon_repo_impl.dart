import 'package:genshin_app/models/weapon_general_model.dart';
import 'package:genshin_app/network/abstract/weapon_service.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:genshin_app/network/impl/weapon_service_impl.dart';
import 'package:genshin_app/repository/abstract/weapon_repo.dart';
import 'package:get/get.dart';

class WeaponRepoImpl implements WeaponRepo {
  static const tag = "WeaponRepoImpl";

  final WeaponService weaponService =
      Get.find<WeaponService>(tag: WeaponServiceImpl.tag);

  @override
  Future<List<WeaponGeneralModel>> getAllWeapons() async {
    GenshinDBResponseJson response = await weaponService.getAllWeapon();

    return response.content!["data"]
        .map<WeaponGeneralModel>((item) => WeaponGeneralModel.fromJson(item))
        .toList();
  }
}
