import 'package:genshin_app/repository/abstract/character_repo.dart';
import 'package:genshin_app/repository/abstract/weapon_repo.dart';
import 'package:genshin_app/repository/impl/character_repo_impl.dart';
import 'package:genshin_app/repository/impl/weapon_repo_impl.dart';
import 'package:get/get.dart';

class Repository {
  static void registerRepo() {
    Get.create<CharacterRepo>(() => CharacterRepoImpl(),
        tag: CharacterRepoImpl.tag);
    Get.create<WeaponRepo>(() => WeaponRepoImpl(), tag: WeaponRepoImpl.tag);
  }
}
