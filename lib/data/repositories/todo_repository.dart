import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:listatodo_lovepeople/data/datasource/session_datasource.dart';
import 'package:listatodo_lovepeople/data/model/todo_response.dart';
import 'package:listatodo_lovepeople/main.dart';

class TodoRepository {
  final SessionDataSource dataSource;

  TodoRepository({required this.dataSource});

  Future<List<Todo>> getTodoList() async {
    String token = await dataSource.getToken() ?? '';
    Uri url = Uri.parse('${baseUrl}todos');
    return http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token'
      },
    ).then((value) {
      if (value.statusCode == 200) {
        print(value.statusCode);
        Map json = jsonDecode(value.body);
        return (json['data'] as List).map((e) {
          return Todo.fromJson((e as Map).cast());
        }).toList();
      } else {
        return [];
      }
    });
  }
}
