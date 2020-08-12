import 'package:flutter/material.dart';
import 'package:flutter_app/contants/ui_constants.dart';
import 'package:flutter_app/ui/pages/cities/cities_page.dart';

class HomePage extends StatelessWidget {
  void handleNavigateTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => CitiesPage()),
    );
  }

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
            constraints: BoxConstraints(maxWidth: maxPageWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 50,
                ),
                const SizedBox(
                  height: 90,
                ),
                Center(
                  child: Text(
                    'Hola,\nBienvenido ',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Que te parece si agregamos\nuna nueva ciudad?',
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 90,
                ),
                RaisedButton(
                  color: Colors.white,
                  elevation: 0,
                  splashColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Text('Agregar Ciudad'),
                  onPressed: () => handleNavigateTap(context),
                ),
              ],
            ),
          ))),
        ],
      ),
    );
  }
}
