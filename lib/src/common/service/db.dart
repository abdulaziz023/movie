import 'package:shared_preferences/shared_preferences.dart';

class DB {
  DB._();
  static SharedPreferences? storage;

  static Future init() async {
    storage = await SharedPreferences.getInstance();
  }

  static Future<bool> saveString(String key, String value) async {
    if (storage == null) {
      return false;
    } else {
      return storage!.setString(key, value);
    }
  }

  static String? getString(String key) {
    if (storage == null) {
      return "";
    } else {
      return storage!.getString(key);
    }
  }

  static Future<Set<String>> getAllKeys() async {
    return storage!.getKeys();
  }

  static Future<bool> remove(String key) async {
    return storage!.remove(key);
  }
}
