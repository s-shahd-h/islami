import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeeth.dart';
import 'package:islami/tabs/sebha.dart';
import 'package:islami/tabs/setting.dart';

import 'homePage.dart';
import 'sura_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuranPage(),
routes: {
        Sura.routeName:(context) => Sura(),
  Hadeeth.routeName:(context) => Hadeeth(),
  Sebha.routeName:(context) => Sebha(),
  Setting.routeName:(context) => Setting(),
},
    );
  }
}


