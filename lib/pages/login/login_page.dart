import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listatodo_lovepeople/data/datasource/session_datasource.dart';
import 'package:listatodo_lovepeople/data/repositories/user_repository.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  late UserRepository _userRepository;
  late SessionDataSource _dataSource;

  @override
  void initState() {
    _userRepository = UserRepository();
    _dataSource = SessionDataSource();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _verifySession();
    super.initState();
  }

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(169, 1, 247, 1)),
      home: Scaffold(
        body: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                      bottomRight: Radius.circular(200),
                    ),
                  ),
                ),
                const Positioned(
                  top: 50,
                  child: Image(
                    image: AssetImage('assets/images/lovepeople_logo.png'),
                    height: 150,
                  ),
                ),
                const Positioned(
                  top: 210,
                  child: Text(
                    'LovePeople',
                    style: TextStyle(
                      color: Color.fromRGBO(49, 1, 185, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 360,
                  child: Text('Que bom que voltou!', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600)),
                ),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 270,
                      ),
                      SizedBox(
                        height: 60,
                        width: 350,
                        child: TextFormField(
                          validator: (email) {
                            if (email == null || email.isEmpty) {
                              return 'Digite seu e-mail!';
                            }
                            return null;
                          },
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'Número de telefone, e-mail ou CPF',
                            hintStyle: TextStyle(fontFamily: 'Tahoma', fontSize: 18, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20, // Ajuste o espaçamento conforme necessário
                      ),
                      SizedBox(
                        width: 350,
                        height: 60,
                        child: TextFormField(
                          obscureText: !_showPassword,
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return 'Digite sua senha!';
                            } else if (password.length < 5) {
                              return 'Por favor, digite uma senha mais forte :)';
                            }
                          },
                          controller: _passwordController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(_showPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                              onPressed: () {
                                setState(() {
                                  _showPassword = !_showPassword;
                                });
                              },
                            ),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'Senha',
                            hintStyle: const TextStyle(fontFamily: 'Tahoma', fontSize: 18, color: Color.fromRGBO(49, 1, 185, 1), fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                        child: Row(
                          children: [
                            SizedBox(width: 5),
                            Text(
                              'Clique Aqui!',
                              style: TextStyle(
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40, // Ajuste o espaçamento conforme necessário
                      ),
                      SizedBox(
                        width: 100,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: _login,
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            backgroundColor: const Color.fromRGBO(49, 1, 185, 1),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 1.5,
                            ),
                          ),
                          child: const Text(
                            'Entrar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Divider(
                            color: Colors.yellow,
                            thickness: 1.0,
                            height: 40,
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 6),
                                child: Text(
                                  'Não possui cadastro?',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: _goSignUp,
                                child: const Text(
                                  'Clique Aqui!',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Função que envia os dados digitados nos campos de e-mail e senha do usuário e faz uma requisição post com a API
  // para checar se o cadastro é válido e obter o token JWT.
  // Após o token obtido, a função faz uma validação para checar se o mesmo é diferente de nulo e, caso verdadeiro,
  // envia o usuário para a página home já autenticado.
  void _login() {
    _userRepository.login(_emailController.text, _passwordController.text).then((value) {
      if (value?.jwt != null) {
        _dataSource.salvarToken(value!.jwt!);
        _goHome();
      }
    });
  }

  void _verifySession() async {
    String? jwt = await _dataSource.getToken();
    if (jwt != null && context.mounted) {
      _goHome();
    }
  }

  void _goHome() {
    if (context.mounted) {
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    }
  }

  void _goSignUp() {
    if (context.mounted) {
      Navigator.of(context).pushNamedAndRemoveUntil('/signup', (route) => false);
    }
  }
}
