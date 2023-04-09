import 'package:genshin_app/models/material_model.dart';
import 'package:flutter_core/network/custom_cancel_token.dart';

abstract class MaterialRepo {
  Future<MaterialModel> getMaterialInfo(
      {required String name, CustomCancelToken? cancelToken});
}
