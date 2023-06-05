import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  final _secureStorage = const FlutterSecureStorage();

  Future<void> put(String key, Object value) async {
    await _secureStorage.write(key: key, value: jsonEncode(value));
  }

  Future<String?> get(String key) async {
    final cached = await _secureStorage.read(key: key);
    if (cached != null) {
      return jsonDecode(cached);
    }
    return null;
  }

  Future<void> clearAll() async {
    await _secureStorage.deleteAll();
  }
}
