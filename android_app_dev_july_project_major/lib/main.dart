


import 'package:android_app_dev_july_project_major/main_ui.dart';
import 'package:android_app_dev_july_project_major/login.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const LoginPage(),
       'main_ui': (context) => const MyApp(),
    },
    onGenerateRoute:(RouteSettings settings){ } ,
    onUnknownRoute: (RouteSettings settings){ },
  ));
}