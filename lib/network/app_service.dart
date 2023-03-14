import 'package:genshin_app/network/abstract/character_service.dart';
import 'package:genshin_app/network/impl/character_service_impl.dart';
import 'package:get/get.dart';

class AppService {
  static void registerService() {
    Get.create<CharacterService>(() => CharacterServiceImpl(),
        tag: CharacterServiceImpl.tag);
  }
}
