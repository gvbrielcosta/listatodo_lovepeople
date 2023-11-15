import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(169, 1, 247, 1)),

      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(169, 1, 247, 1)),
      home: Scaffold(
        body: Column(
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(200)),
                      color: Colors.white),

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
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.0),

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
                        hintStyle: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 18,
                            color: Color.fromRGBO(49, 1, 185, 1),
                            fontWeight: FontWeight.w400),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),

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
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(22))),

                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22))),
                     child: ListTile(
                        contentPadding: EdgeInsets.all(17),
                        tileColor: const Color.fromRGBO(255, 242, 204, 100),
                        trailing: const Icon(
                          Icons.delete_outline,
                          color: Color.fromRGBO(49, 1, 185, 1),
                                    title: Text('Limpar a casa',
                            style: GoogleFonts.montserrat(
                                fontSize: 17,
                                color: Color.fromRGBO(49, 1, 185, 1),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.0)),
                        subtitle: Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam',
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Color.fromRGBO(49, 1, 185, 1),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0)),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),

                        title: Text('Limpar a casa', style: GoogleFonts.montserrat(fontSize: 17, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w700, letterSpacing: 1.0)),
                        subtitle: Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam', style: GoogleFonts.montserrat(fontSize: 12, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w500, letterSpacing: 1.0)),
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22))),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(17),
                        tileColor: const Color.fromRGBO(199, 255, 203, 100),
                        trailing: const Icon(
                          Icons.delete_outline,
                          color: Color.fromRGBO(49, 1, 185, 1),
                        ),
                        title: Text('Limpar a casa',
                            style: GoogleFonts.montserrat(
                                fontSize: 17,
                                color: Color.fromRGBO(49, 1, 185, 1),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.0)),
                        subtitle: Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam',
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Color.fromRGBO(49, 1, 185, 1),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0)),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                      ),
                    ),
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22))),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(17),
                          tileColor: const Color.fromRGBO(199,255,203, 100),
                          trailing: const Icon(
                            Icons.delete_outline,
                            color: Color.fromRGBO(49, 1, 185, 1),
                          ),
                          title: Text('Limpar a casa', style: GoogleFonts.montserrat(fontSize: 17, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w700, letterSpacing: 1.0)),
                          subtitle: Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam', style: GoogleFonts.montserrat(fontSize: 12, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w500, letterSpacing: 1.0)),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22))),
                        ),
                      ),

                 ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(17),
                        tileColor: const Color.fromRGBO(232, 197, 255, 100),
                        trailing: const Icon(
                          Icons.delete_outline,
                          color: Color.fromRGBO(49, 1, 185, 1),
                        ),
                        title: Text('Limpar a casa',
                            style: GoogleFonts.montserrat(
                                fontSize: 17,
                                color: Color.fromRGBO(49, 1, 185, 1),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.0)),
                        subtitle: Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam',
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Color.fromRGBO(49, 1, 185, 1),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0)),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                      ),
                    ),

                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22))),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(17),
                          tileColor: const Color.fromRGBO(	232, 197, 255, 100),
                          trailing: const Icon(
                            Icons.delete_outline,
                            color: Color.fromRGBO(49, 1, 185, 1),
                          ),
                          title: Text('Limpar a casa', style: GoogleFonts.montserrat(fontSize: 17, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w700, letterSpacing: 1.0)),
                          subtitle: Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam', style: GoogleFonts.montserrat(fontSize: 12, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w500, letterSpacing: 1.0)),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22))),
                        ),
                      ),

                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Icon(
                      Icons.add,
                      size: 100,
                      color: Colors.white,
                    ),
                      ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
