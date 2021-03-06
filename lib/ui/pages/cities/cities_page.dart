import 'package:flutter/material.dart';
import 'package:flutter_app/contants/ui_constants.dart';
import 'package:flutter_app/widgets/header_widget.dart';
import 'package:flutter_app/ui/pages/cities/cities_add_page.dart';

class CitiesPage extends StatelessWidget {
  void handleNavigateTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => CitiesAddPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: primaryColor,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: primaryColor,
          onPressed: () => handleNavigateTap(context),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              HeaderWidget(
                title: 'Mis Ciudades',
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'No tiene ciudades',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
