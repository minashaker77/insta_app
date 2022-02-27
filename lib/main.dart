import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Vazir',
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme:
              TextTheme(subtitle1: TextStyle(color: Colors.black)),
        ),
        title: 'اینستاگرام',
        home: Directionality(
            textDirection: TextDirection.rtl, child: MyHomePage()));
  }
}
