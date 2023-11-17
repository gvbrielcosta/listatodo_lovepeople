import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:listatodo_lovepeople/data/model/login_response.dart';
import 'package:listatodo_lovepeople/main.dart';

class UserRepository {
  
  Future<LoginResponse?> login(String email, String password) {
    Uri url = Uri.parse('${baseUrl}auth/local');
    return http.post(url, body: {
      'identifier': email,
      'password': password,
    }).then((value) {
      if (value.statusCode == 200) {
        Map json = jsonDecode(value.body);
        return LoginResponse.fromJson(json.cast());
      } else {
        
      }
    });
  }
}
