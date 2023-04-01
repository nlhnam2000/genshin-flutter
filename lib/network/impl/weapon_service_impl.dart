import 'package:genshin_app/network/abstract/weapon_service.dart';
import 'package:genshin_app/network/api_path.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:genshin_app/network/interceptor.dart';

class WeaponServiceImpl implements WeaponService {
  static const tag = "WeaponServiceImpl";

  @override
  Future<GenshinDBResponseJson> getAllWeapon() async {
    GenshinDBResponseJson response =
        await get(host: ApiPath.baseHost, path: ApiPath.getAllWeapons);

    return response;
  }
}
