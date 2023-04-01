import 'package:genshin_app/network/api_service.dart';

abstract class WeaponService {
  Future<GenshinDBResponseJson> getAllWeapon();
}
