import 'package:dio/dio.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/models/weapon_general_model.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:genshin_app/repository/abstract/weapon_repo.dart';
import 'package:genshin_app/repository/impl/weapon_repo_impl.dart';
import 'package:flutter_core/bases/exceptions.dart';
import 'package:get/get.dart';

class WeaponGeneralProvider extends BaseProvider {
  BaseProviderModel<List<WeaponGeneralModel>> _weaponData =
      BaseProviderModel.init(data: []);
  BaseProviderModel<List<WeaponGeneralModel>> get weaponData => _weaponData;
  final WeaponRepo weaponRepo = Get.find<WeaponRepo>(tag: WeaponRepoImpl.tag);

  Future<void> getWeaponGeneral() async {
    _weaponData = BaseProviderModel.loading();
    try {
      List<WeaponGeneralModel> response = await weaponRepo.getAllWeapons();
      _weaponData = BaseProviderModel.succeed(response);
    } on DioError catch (e) {
      setErrorMessage(e.message);
      _weaponData = BaseProviderModel.failed(ServerResponseError(e.message));
    } finally {
      notifyListeners();
    }
  }
}
