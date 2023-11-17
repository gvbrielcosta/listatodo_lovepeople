import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:listatodo_lovepeople/data/model/login_response.dart';
import 'package:listatodo_lovepeople/data/model/signup_response.dart';
import 'package:listatodo_lovepeople/main.dart';

class SignUpRepository {
  Future<SignUpResponse?> signup(String username, String email, String password) {
    Uri url = Uri.parse('${baseUrl}auth/local/register');
    return http.post(url, body: {
      'username': username,
      'email': email,
      'password': password,
    }).then((value) {
      if (value.statusCode == 200) {
        Map response = jsonDecode(value.body);
        return SignUpResponse.fromJson(response.cast());
      }
    });
  }
}
