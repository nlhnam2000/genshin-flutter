class ApiPath {
  static const String baseHost = "http://192.168.1.135:4000";
  static const String baseImageHost =
      "https://res.cloudinary.com/genshin/image/upload/sprites/";

  /// character
  static const String getAllCharacters = "characters";
  static const String searchCharacters = "characters/search";
  static const String getCharacterTalents = "characters/talents";
  static const String getDetailCharacter = "characters/detail";
  static const String getCharacterAscension = "characters/material";

  /// weapons
  static const String getAllWeapons = "weapons";

  // material
  static const String getMaterialInfo = "materials/";

  // artifact
  static const String getAllArtifacts = "artifacts";
}
