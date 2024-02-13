import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/model/sura_model.dart';

class Sura extends StatelessWidget {
  static const String routeName='suraContent';
  const Sura({super.key});

  @override
  Widget build(BuildContext context) {
    SuraModel suraData=ModalRoute.of(context)!.settings.arguments as SuraModel;

    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/bg3.png'),
    fit: BoxFit.fill,
    )),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
    suraData.suraName,
    style: GoogleFonts.elMessiri(
    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),),),);

  }
}
