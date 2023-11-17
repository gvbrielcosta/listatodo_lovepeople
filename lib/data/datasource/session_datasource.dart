import 'package:shared_preferences/shared_preferences.dart';

class SessionDataSource {
  static const jwtKey = 'JWT_KEY';

  Future salvarToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(jwtKey, token);
  }

  Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(jwtKey);
  }
  
  Future deleteToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(jwtKey);
  }


}
