import 'package:estante_livre/common/shelf_colors.dart';
// import 'package:estante_livre/model/auth_token.dart';
// import 'package:estante_livre/model/user_login_body.dart';
// import 'package:estante_livre/network/auth_repository.dart';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  String email = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();

  static void signIn(
    // String email,
    // String password,
    void Function() redirectCallback,
  ) async {
    // UserLoginBody request = UserLoginBody(
    //   email: email,
    //   password: password,
    // );
    // AuthToken? token = await AuthRepository.signIn(request);
    // if (token != null) {
    //   redirectCallback();
    // }
    redirectCallback();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: const BoxDecoration(
                color: ShelfColors.green,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: MediaQuery.of(context).size.height < 750
                        ? const EdgeInsets.only(top: 20)
                        : const EdgeInsets.only(top: 39.81),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Image.asset('assets/images/logo.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Estante Livre',
                              style: MediaQuery.of(context).size.height < 750
                                  ? const TextStyle(fontSize: 20)
                                  : const TextStyle(fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Faça Login',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: MediaQuery.of(context).size.height < 750
                        ? const EdgeInsets.fromLTRB(61, 30, 61, 0)
                        : const EdgeInsets.fromLTRB(61, 50, 61, 0),
                    child: Center(
                      child: TextFormField(
                        onSaved: (value) {
                          email = value ?? '';
                        },
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return 'Digite seu Email';
                          }
                          if (!email.isValidEmail()) {
                            return 'Este email não é válido';
                          }

                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ShelfColors.greenLight),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          labelText: 'Email',
                          fillColor: ShelfColors.greenLight,
                          focusColor: ShelfColors.greenLight,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: MediaQuery.of(context).size.height < 750
                        ? const EdgeInsets.fromLTRB(61, 30, 61, 14.39)
                        : const EdgeInsets.fromLTRB(61, 50, 61, 14.39),
                    child: Center(
                      child: TextFormField(
                        onSaved: (value) {
                          password = value ?? '';
                        },
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return 'Digite sua senha';
                          }

                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ShelfColors.fakeWhite),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          labelText: 'Senha',
                          fillColor: ShelfColors.greenLight,
                          focusColor: ShelfColors.greenLight,
                          filled: true,
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 61),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/register'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        child: const Text(
                          'Não possui conta? Cadastre-se!',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: MediaQuery.of(context).size.height < 750
                        ? const EdgeInsets.only(top: 16.61, bottom: 50)
                        : const EdgeInsets.only(top: 26.61, bottom: 90.39),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () => {
                          if (_formKey.currentState!.validate())
                            {
                              _formKey.currentState!.save(),
                              signIn(
                                // email,
                                // password,
                                () => Navigator.of(context).pushNamed('/'),
                              ),
                            },
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            ShelfColors.pink,
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0)),
                              side: BorderSide(color: ShelfColors.pink),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: MediaQuery.of(context).size.height < 750
                              ? const EdgeInsets.fromLTRB(30, 10, 20, 10)
                              : const EdgeInsets.fromLTRB(30, 10, 39.81, 10),
                          child: const Text(
                            'Entrar',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }
}
