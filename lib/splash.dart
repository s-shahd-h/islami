import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/buttom_navigation_bar.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _DashBoardState();
}

class _DashBoardState extends State<Splash> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
     ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>BottomNavigation())));
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/splash.png'),
        fit: BoxFit.cover),
        

      ),
      
    ),
   );
  }
}