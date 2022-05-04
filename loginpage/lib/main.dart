import 'package:flutter/material.dart';
import 'package:loginpage/firstpage/third.dart';
import 'package:loginpage/loginpage/logpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
      primarySwatch: Colors.lightGreen,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.lightGreen,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      ),

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        labelStyle: TextStyle(fontSize: 18, 
        color: Colors.grey.shade500,
      ),
      ),
      ));
      home: LogPage();
  }
}

