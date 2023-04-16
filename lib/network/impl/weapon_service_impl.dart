import 'package:genshin_app/device/storage_service.dart';
import 'package:genshin_app/network/abstract/weapon_service.dart';
import 'package:genshin_app/network/api_path.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:genshin_app/network/interceptor.dart';
import 'package:genshin_app/utils/constants.dart';

class WeaponServiceImpl implements WeaponService {
  static const tag = "WeaponServiceImpl";

  @override
  Future<GenshinDBResponseJson> getAllWeapon() async {
    final deployHost = await StorageService().get(StorageConstant.savedHost);
    GenshinDBResponseJson response = await get(
        host: deployHost ?? ApiPath.baseHost, path: ApiPath.getAllWeapons);

    return response;
  }
}
