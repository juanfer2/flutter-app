import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/welcome.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
              child: Center(
                  child: Container(
            constraints: BoxConstraints(maxWidth: 300.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 50,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Hola,\nBienvenido ',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Que te parce si agregamos\nuna nueva ciudad?',
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ))),
        ],
      ),
    );
  }
}
