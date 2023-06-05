import 'package:genshin_app/network/abstract/artifact_service.dart';
import 'package:genshin_app/network/abstract/character_service.dart';
import 'package:genshin_app/network/abstract/report_service.dart';
import 'package:genshin_app/network/abstract/weapon_service.dart';
import 'package:genshin_app/network/impl/artifact_service_impl.dart';
import 'package:genshin_app/network/impl/character_service_impl.dart';
import 'package:genshin_app/network/impl/report_service_impl.dart';
import 'package:genshin_app/network/impl/weapon_service_impl.dart';
import 'package:genshin_app/services/analytics_service.dart';
import 'package:get/get.dart';

class AppService {
  static void registerService() {
    Get.create<CharacterService>(() => CharacterServiceImpl(),
        tag: CharacterServiceImpl.tag);
    Get.create<WeaponService>(() => WeaponServiceImpl(),
        tag: WeaponServiceImpl.tag);
    Get.create<ArtifactService>(() => ArtifactServiceImpl(),
        tag: ArtifactServiceImpl.tag);
    Get.create<AnalyticsService>(() => AnalyticsService());
    Get.create<ReportService>(() => ReportServiceImpl(),
        tag: ReportServiceImpl.tag);
  }
}
