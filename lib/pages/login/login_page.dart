import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(178, 73, 227, 1),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(400),
                          bottomRight: Radius.circular(400),
                          topLeft: Radius.zero,
                          topRight: Radius.zero)),
                ),
                Positioned(
                  top: 100,
                  child: Image.network(
                    'https://cdn-fhadf.nitrocdn.com/ZposurrhgpMNIxJkJSDhfrsVaOicbFuO/assets/images/optimized/rev-bb4d11b/www.lovepeople.com.br/wp-content/uploads/2021/02/favicon-lovepeople.png',
                    height: 150,
                  ),
                ),
                Positioned(
                  top: 300,
                  child: Text(
                    'Que bom que voltou!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:
                          34.0, // Ajuste o tamanho da fonte conforme necessário
                      fontWeight: FontWeight.bold, // Adiciona negrito ao texto
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Número de telefone, email ou CPF',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
