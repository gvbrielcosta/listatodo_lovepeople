import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpCompleted extends StatefulWidget {
  const SignUpCompleted({super.key});

  @override
  State<SignUpCompleted> createState() => _SignUpCompletedState();
}

class _SignUpCompletedState extends State<SignUpCompleted> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(169, 1, 247, 1)),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Cadastro concluído!',
                      style: GoogleFonts.montserrat(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600, letterSpacing: 1.0),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: goHome,
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          backgroundColor: const Color.fromRGBO(49, 1, 185, 1),
                          side: const BorderSide(
                            color: Colors.white,
                            width: 1.5,
                          )),
                      child: const Text('Começar', style: TextStyle(fontSize: 16))),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Stack(alignment: Alignment.center, children: [
                Container(
                  height: 400,
                  decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(200), topRight: Radius.circular(200), bottomLeft: Radius.zero, bottomRight: Radius.zero)),
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Image(
                        image: AssetImage('assets/images/coruja.png'),
                        height: 150,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Os ventos da programação estão indo até você!',
                        style: TextStyle(
                          color: Color.fromRGBO(49, 1, 185, 1),
                          
                        ),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ],
        ))));
  }

  void goHome() {
    if (context.mounted) {
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    }
  }
}
