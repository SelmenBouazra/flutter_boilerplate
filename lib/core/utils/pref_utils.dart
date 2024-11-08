import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

abstract class PrefUtils {
  String getToken();

  void setToken(String token);

  void removeToken();

  void logout();
}

class PrefUtilsImpl implements PrefUtils {
  final String tokenKey = "token";

  final SharedPreferences sharedPreferences;

  PrefUtilsImpl({
    required this.sharedPreferences,
  });

  @override
  String getToken() {
    if (sharedPreferences.containsKey(tokenKey)) {
      return jsonDecode(sharedPreferences.getString(tokenKey) ?? "");
    } else {
      return '';
    }
  }

  @override
  void setToken(String token) {
    sharedPreferences.setString(tokenKey, jsonEncode(token));
  }

  @override
  void removeToken() {
    if (sharedPreferences.containsKey(tokenKey)) {
      sharedPreferences.remove(tokenKey);
    }
  }

  @override
  void logout() {
    removeToken();
  }
}
