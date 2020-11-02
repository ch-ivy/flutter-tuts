import 'package:TestApp/pages/choose_location.dart';
import 'package:TestApp/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:TestApp/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
