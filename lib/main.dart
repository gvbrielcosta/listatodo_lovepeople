import 'package:flutter/material.dart';
import 'package:listatodo_lovepeople/data/model/todo_response.dart';
import 'package:listatodo_lovepeople/pages/login/login_page.dart';
import 'package:listatodo_lovepeople/pages/signup/signup_page.dart';
import 'package:listatodo_lovepeople/pages/todo/todo_page.dart';

const String baseUrl = 'https://todo.rafaelbarbosatec.com/api/';
void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => const TodoPage(),
      }

    );
  }
}
