import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeeth.dart';
import 'package:islami/tabs/radio.dart';
import 'package:islami/tabs/sebha.dart';
import 'package:islami/tabs/setting.dart';

import 'homePage.dart';
import 'my_theme.dart';

class BottomNavigation extends StatefulWidget {
   BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
int index=0;
List<Widget> tabs=[
  QuranPage(),
  Sebha(),
  Hadeeth(),
  RadioPage(),
  Setting(),

];
@override
 
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          bottomNavigationBar:
          BottomNavigationBar(
          currentIndex: index,
          backgroundColor: MyTheme.primary_color,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          onTap: (value){
            index=value;
            setState(() {
            });
          },
          items: [

            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                label: 'sebha'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                label: 'sebha'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/qran_blue.png')),
                label: 'hadeeth'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio_blue.png')),
              label: 'radio'),
            BottomNavigationBarItem(icon:Icon(Icons.settings),
            label: 'settings')
          ],

        ),
        body: tabs[index],
        );

  }
}
