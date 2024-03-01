import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadeeth_content.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../model/hadeeth_model.dart';
import '../my_theme.dart';

class Hadeeth extends StatefulWidget {
  static const String routeName = 'hadeeth';
  Hadeeth({super.key});

  @override
  State<Hadeeth> createState() => _HadeethState();
}

class _HadeethState extends State<Hadeeth> {
  List<HadeethModel> hadeethContent = [];

  @override
  Widget build(BuildContext context) {
    if (hadeethContent.isEmpty) {
      loadAhadeeth();
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
            AppLocalizations.of(context)!.title,
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: 205,
              height: 227,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/gold-quraan.png'),
                fit: BoxFit.cover,
              )),
            ),
            SizedBox(height: 12),
            Divider(
              thickness: 2,
              color: MyTheme.primary_color,
            ),
            Text(AppLocalizations.of(context)!.ahadeeth, style: Theme.of(context).textTheme.bodyLarge),
            Divider(
              thickness: 2,
              color: MyTheme.primary_color,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: MyTheme.primary_color,

                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Hadeeth_content.routeName,
                          arguments: hadeethContent[index]);
                    },
                    child: Text(
                      hadeethContent[index].title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  );
                },
                itemCount: hadeethContent.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  Future loadAhadeeth() async {
    String ahadeethFile =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadeeth = ahadeethFile.split('#');
    for (int i = 0; i < ahadeeth.length; i++) {
      String hadeeth = ahadeeth[i];
      List<String> hadeethLines = hadeeth.trim().split('\n');
      String title = hadeethLines[0];
      hadeethLines.removeAt(0);
      List<String> content = hadeethLines;
      hadeethContent
          .add(HadeethModel(title: title, content: content));
      setState(() {});
    }
  }
}
