import 'package:flutter/material.dart';
import 'package:flutter_app/contants/ui_constants.dart';
import 'package:flutter_app/widgets/header_widget.dart';

class CitiesAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: primaryColor,
          onPressed: () {},
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              HeaderWidget(
                title: 'Agregar Ciudad',
              ),
            ],
          ),
        ));
  }
}
