import 'package:shared_preferences/shared_preferences.dart';

class MyBox {
  write(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  writeInt(String key, int value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  writeDouble(String key, double value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setDouble(key, value);
  }

  writeBool(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  writeList(String key, List<String> value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList(key, value);
  }

  Future<String?> read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.getString(key);
  }

  Future<int?> readInt(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.getInt(key);
  }

  Future<double?> readDouble(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.getDouble(key);
  }

  Future<bool?> readBool(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.getBool(key);
  }

  Future<List<String>?> readList(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.getStringList(key);
  }

  remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  clear(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
