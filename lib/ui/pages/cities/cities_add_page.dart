import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/contants/ui_constants.dart';
import 'package:flutter_app/services/weather_const_service.dart';
import 'package:flutter_app/ui/pages/cities/debouncer.dart';
import 'package:flutter_app/widgets/header_widget.dart';
import 'package:http/http.dart' as http;

class CitiesAddPage extends StatefulWidget {
  @override
  _CitiesAddPageState createState() => _CitiesAddPageState();
}

class _CitiesAddPageState extends State<CitiesAddPage> {
  final debouncer = Debouncer();

  void onChangeText(String text) {
    debouncer.run(() {
      requestSearch(text);
    });
  }

  void requestSearch(String text) async {
    final url = '${api}search/?query=$text';
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    print(data);
  }

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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              HeaderWidget(
                title: 'Agregar Ciudad',
              ),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: TextField(
                  onChanged: onChangeText,
                  // onChanged: (value) {
                  //   print(value);
                  // },
                  decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[300],
                      hintText: 'Buscar ciudad',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
