import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listatodo_lovepeople/data/datasource/session_datasource.dart';
import 'package:listatodo_lovepeople/data/model/todo_response.dart';
import 'package:listatodo_lovepeople/data/repositories/todo_repository.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<Todo> todoList = [];
  late TodoRepository _repository;
  late SessionDataSource _sessionDataSource;

  @override
  void initState() {
    _sessionDataSource = SessionDataSource();
    _repository = TodoRepository(dataSource: _sessionDataSource);
    _loadTodoList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(169, 1, 247, 1)),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(350, 40, 0, 0),
                    child: IconButton(
                        onPressed: _logout,
                        icon: const Icon(
                          Icons.exit_to_app,
                          size: 40,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero, bottomLeft: Radius.zero, bottomRight: Radius.circular(200)), color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image(
                      image: AssetImage('assets/images/lovepeople_logo.png'),
                      height: 50,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Suas listagens',
                        style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600, letterSpacing: 1.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(12, 15, 0, 0),
                          hintText: 'Busque palavras-chaves',
                          hintStyle: TextStyle(fontFamily: 'Tahoma', fontSize: 18, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w400),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(16))),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color.fromRGBO(49, 1, 185, 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: todoList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22))),
                              child: ListTile(
                                contentPadding: EdgeInsets.all(17),
                                tileColor: const Color.fromRGBO(255, 242, 204, 100),
                                trailing: const Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(49, 1, 185, 1),
                                ),
                                title: Text(todoList[index].attributes?.title ?? '', style: GoogleFonts.montserrat(fontSize: 17, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w700, letterSpacing: 1.0)),
                                subtitle: Text(todoList[index].attributes?.description ?? '', style: GoogleFonts.montserrat(fontSize: 12, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w500, letterSpacing: 1.0)),
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22))),
                              ),
                            );
                          },
                        )),
                    const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Icon(
                        Icons.add,
                        size: 100,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _loadTodoList() {
    _repository.getTodoList().then((value) {
      setState(() {
        todoList = value;
      });
    });
  }

  _logout() async{
    await _sessionDataSource.deleteToken();
    if (context.mounted) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    }
  }
}
