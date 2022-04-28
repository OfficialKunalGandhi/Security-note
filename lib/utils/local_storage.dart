import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  static const String localNote = "LocalNote";
  static const storage = FlutterSecureStorage();

  setString(String key, String value) {
    storage.write(key: key, value: value);
  }

  Future<String?> getString(String key) async {
    return await storage.read(key: key);
  }
}
