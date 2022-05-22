import 'dart:html';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color(0xFF69E0A3),
        height: 600,
        width: 800,
        child: Column(
          children: <Widget>[
            const Center(
              child: Align(
                alignment: Alignment.topCenter,
                child: Text('Estante Livre'),
              ),
            ),
            const Center(
              child: Align(
                alignment: Alignment.topCenter,
                child: Text('Faça Login'),
              ),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Senha'),
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: Text('Esqueci minha senha'),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () => {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xFFEE6060),
                  ),
                ),
                child: const Text('Entrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
