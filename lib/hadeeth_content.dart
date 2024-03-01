import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:islami/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'model/hadeeth_model.dart';

class Hadeeth_content extends StatefulWidget {
  static const String routeName='Hadeeth_content';
   Hadeeth_content({super.key});

  @override
  State<Hadeeth_content> createState() => _Hadeeth_contentState();
}

class _Hadeeth_contentState extends State<Hadeeth_content> {




  @override
  Widget build(BuildContext context) {
var model=ModalRoute.of(context)!.settings.arguments as HadeethModel;

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
    AppLocalizations.of(context)!.title,
    style: GoogleFonts.elMessiri(
    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    ),
    body:  Center(
      child: Container(
        height: MediaQuery.of(context).size.height *.6, //  400
        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 8),
        alignment: Alignment.center,
        margin: EdgeInsets.all(18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              model.content[index],
              textAlign: TextAlign.center,
            );
          },
          itemCount: model.content.length,
        ),
      ),
    ),
    ),
    );
  }


}
