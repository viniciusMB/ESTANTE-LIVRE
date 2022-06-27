import 'package:estante_livre/common/shelf_colors.dart';
import 'package:flutter/material.dart';
import 'package:estante_livre/model/user_register_body.dart';
import 'package:estante_livre/network/auth_repository.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  RegisterState createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  String username = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  final _formKey = GlobalKey<FormState>();

  static void signUp(
    String username,
    String email,
    String password,
    void Function() redirectCallback,
  ) async {
    UserRegisterBody request = UserRegisterBody(
      username: username,
      email: email,
      password: password,
    );
    bool success = await AuthRepository.signUp(request);
    if (success) {
      redirectCallback();
    }
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
              // height: MediaQuery.of(context).size.height * 0.8,
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
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'Estante Livre',
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: MediaQuery.of(context).size.height < 750
                        ? const EdgeInsets.only(top: 10)
                        : const EdgeInsets.only(top: 20),
                    child: const Center(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Crie a sua conta',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: MediaQuery.of(context).size.height < 750
                        ? const EdgeInsets.fromLTRB(61, 20, 61, 0)
                        : const EdgeInsets.fromLTRB(61, 50, 61, 0),
                    child: Center(
                      child: TextFormField(
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return 'Digite seu nome';
                          }

                          return null;
                        },
                        onSaved: (value) {
                          username = value ?? '';
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ShelfColors.greenLight),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          labelText: 'Nome',
                          fillColor: ShelfColors.greenLight,
                          focusColor: ShelfColors.greenLight,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: MediaQuery.of(context).size.height < 750
                        ? const EdgeInsets.fromLTRB(61, 20, 61, 0)
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
                        ? const EdgeInsets.fromLTRB(61, 20, 61, 0)
                        : const EdgeInsets.fromLTRB(61, 50, 61, 0),
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
                    padding: MediaQuery.of(context).size.height < 750
                        ? const EdgeInsets.fromLTRB(61, 20, 61, 0)
                        : const EdgeInsets.fromLTRB(61, 50, 61, 14.39),
                    child: Center(
                      child: TextFormField(
                        validator: (confirmPassword) {
                          if (confirmPassword != password) {
                            return 'As senhas não correspondem.';
                          }

                          return null;
                        },
                        onSaved: (value) {
                          confirmPassword = value ?? '';
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ShelfColors.fakeWhite),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          labelText: 'Confirme sua senha',
                          fillColor: ShelfColors.greenLight,
                          focusColor: ShelfColors.greenLight,
                          filled: true,
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                  // const Padding(
                  //   padding: EdgeInsets.only(right: 61),
                  //   child: Align(
                  //     alignment: Alignment.topRight,
                  //     child: Text(
                  //       'Esqueci minha senha',
                  //       style: TextStyle(fontSize: 18),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: MediaQuery.of(context).size.height < 750
                        ? const EdgeInsets.only(top: 10, bottom: 20)
                        : const EdgeInsets.only(top: 26.61, bottom: 90.39),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () => {
                          _formKey.currentState!.save(),
                          if (_formKey.currentState!.validate())
                            {
                              signUp(
                                username,
                                email,
                                password,
                                () =>
                                    {Navigator.of(context).pushNamed('/login')},
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
                            'Cadastrar',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 61),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/login'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        child: const Text(
                          'Já possui conta ? Faça Login',
                          style: TextStyle(fontSize: 18, color: Colors.black),
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
