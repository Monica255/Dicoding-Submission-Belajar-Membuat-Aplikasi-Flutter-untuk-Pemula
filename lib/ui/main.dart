import 'package:animal_app/ui/screens/detail_page.dart';
import 'package:animal_app/ui/screens/home.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        '/':(context)=>Home(),
        '/detail':(context)=>Detail()
      },
    );
  }
}

