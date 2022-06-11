import 'dart:html';

import 'package:estante_livre/common/shelf_colors.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
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
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
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
                  ? EdgeInsets.only(top: 10)
                  : EdgeInsets.only(top: 20),
              child: Center(
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
                  ? EdgeInsets.fromLTRB(61, 20, 61, 0)
                  : EdgeInsets.fromLTRB(61, 50, 61, 0),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: ShelfColors.greenLight),
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
                  ? EdgeInsets.fromLTRB(61, 20, 61, 0)
                  : EdgeInsets.fromLTRB(61, 50, 61, 0),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: ShelfColors.greenLight),
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
                  ? EdgeInsets.fromLTRB(61, 20, 61, 0)
                  : EdgeInsets.fromLTRB(61, 50, 61, 0),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: ShelfColors.fakeWhite),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelText: 'Senha',
                    fillColor: ShelfColors.greenLight,
                    focusColor: ShelfColors.greenLight,
                    filled: true,
                  ),
                ),
              ),
            ),
            Padding(
              padding: MediaQuery.of(context).size.height < 750
                  ? EdgeInsets.fromLTRB(61, 20, 61, 14.39)
                  : EdgeInsets.fromLTRB(61, 50, 61, 14.39),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: ShelfColors.fakeWhite),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelText: 'Confirme sua senha',
                    fillColor: ShelfColors.greenLight,
                    focusColor: ShelfColors.greenLight,
                    filled: true,
                  ),
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
              padding: const EdgeInsets.only(top: 26.61, bottom: 90.39),
              child: Center(
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      ShelfColors.pink,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                        side: BorderSide(color: ShelfColors.pink),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Text(
                      'Cadastrar',
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
    );
  }
}
