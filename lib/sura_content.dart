import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/model/sura_model.dart';

class Sura extends StatefulWidget {
  static const String routeName = 'suraContent';

  const Sura({super.key});

  @override
  State<Sura> createState() => _SuraState();
}

class _SuraState extends State<Sura> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraModel suraData =
        ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(suraData.index);
    }
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
          ),
        ),
        body: Card(
            margin: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
            color: Color(0xffF8F8F8),
            shape: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(12)),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return
                    Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Center(
                      child: Text(
                        verses[index],
                        style: GoogleFonts.elMessiri(fontSize: 16),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 14,
                    ),
                itemCount: verses.length)),
      ),
    );
  }

  Future loadFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = sura.split('\n');
    verses = lines;
    setState(() {});
  }
}
