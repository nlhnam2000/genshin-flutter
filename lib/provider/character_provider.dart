import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/models/general_character_model.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:genshin_app/repository/abstract/character_repo.dart';
import 'package:genshin_app/repository/impl/character_repo_impl.dart';
import 'package:get/get.dart';

class CharacterProvider extends BaseProvider {
  // final CharacterRepo repo = CharacterRepoImpl();
  final CharacterRepo repo = Get.find(tag: CharacterRepoImpl.tag);
  BaseProviderModel<List<GeneralCharacterModel>> characterList =
      BaseProviderModel.init(data: []);
  BaseProviderModel<List<String>> searchResult =
      BaseProviderModel.init(data: []);

  void getCharacters() async {
    characterList = BaseProviderModel.loading();
    await Future.delayed(const Duration(seconds: 1));
    try {
      List<GeneralCharacterModel> response = await repo.getCharacters();
      characterList = BaseProviderModel.succeed(response);
    } on Exception catch (error) {
      if (error is DioError) {
        characterList = BaseProviderModel.failed(error);
        setErrorMessage(error.message.toString());
      }
    } finally {
      notifyListeners();
    }
  }

  void searchCharacters({required String keyword}) async {
    searchResult = BaseProviderModel.loading();
    notifyListeners();
    try {
      List<String> response = await repo.search(keyword: keyword);
      searchResult = BaseProviderModel.succeed(response);
    } on Exception catch (e) {
      if (e is DioError) {
        searchResult = BaseProviderModel.failed(e);
        setErrorMessage(e.message.toString());
      }
    } finally {
      notifyListeners();
    }
  }

  // Character? getDetailCharacter({required String name}) {
  //   Character? character;
  //   if (characterList.data!.isNotEmpty) {
  //     character = characterList.data!.firstWhere((char) => char.name == name);
  //   }

  //   return character;
  // }
}
