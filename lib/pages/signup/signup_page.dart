import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(169, 1, 247, 1)),
      home: Scaffold(
        body: Center(
          child: Container(
            height: 400,
            alignment: Alignment.center,
            child: Column(children: [
              Text('Vamos começar!', style: GoogleFonts.montserrat(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600, letterSpacing: 1.0)),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: 350,
                child: TextFormField(
                  decoration: const InputDecoration(contentPadding: EdgeInsets.fromLTRB(12, 15, 0, 0), hintText: 'Nome', hintStyle: TextStyle(fontFamily: 'Tahoma', fontSize: 18, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w400), filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: 350,
                child: TextFormField(
                  decoration: const InputDecoration(contentPadding: EdgeInsets.fromLTRB(12, 15, 0, 0), hintText: 'Número de telefone, e-mail ou CPF', hintStyle: TextStyle(fontFamily: 'Tahoma', fontSize: 18, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w400), filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: 350,
                child: TextFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 15, 0, 0),
                      hintText: 'Senha',
                      hintStyle: TextStyle(fontFamily: 'Tahoma', fontSize: 18, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w400),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Color.fromRGBO(49, 1, 185, 1),
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: 350,
                child: TextFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 15, 0, 0),
                      hintText: 'Confirmar senha',
                      hintStyle: TextStyle(fontFamily: 'Tahoma', fontSize: 18, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w400),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Color.fromRGBO(49, 1, 185, 1),
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromRGBO(49, 1, 185, 1),
                      side: const BorderSide(
                        color: Colors.white,
                        width: 1.5,
                      )),
                  onPressed: () {},
                  child: Text(
                    'Cadastrar',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: const Text('Já possui cadastro? Entrar'),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
