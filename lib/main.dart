import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/hadeeth_content.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/splash.dart';
import 'package:islami/tabs/hadeeth.dart';
import 'package:islami/tabs/sebha.dart';
import 'package:islami/tabs/setting.dart';
import 'package:provider/provider.dart';

import 'buttom_navigation_bar.dart';
import 'homePage.dart';
import 'sura_content.dart';

void main() {
  runApp(

     ChangeNotifierProvider(
      create: (context) =>MyProvider(),
      
     child: MyApp()));

}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      locale:Locale(provider.language),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      theme: MyTheme.lightMode,
      debugShowCheckedModeBanner: false,
      home: Splash(),
routes: {
  QuranPage.routeName:(context)=>QuranPage(),
        Sura.routeName:(context) => Sura(),
  Hadeeth.routeName:(context) => Hadeeth(),
  Sebha.routeName:(context) => Sebha(),
  Setting.routeName:(context) => Setting(),
  Hadeeth_content.routeName:(context)=>Hadeeth_content(),
},
    );
  }
}


