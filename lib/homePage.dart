import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/model/sura_model.dart';
import 'package:islami/sura_content.dart';
import 'package:islami/tabs/hadeeth.dart';
import 'package:islami/tabs/radio.dart';
import 'package:islami/tabs/sebha.dart';
import 'package:islami/tabs/setting.dart';

import 'buttom_navigation_bar.dart';
import 'my_theme.dart';

class QuranPage extends StatefulWidget {
  static const String routeName='quraan';
  QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];



  @override
  Widget build(BuildContext context) {
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
            Text(
              AppLocalizations.of(context)!.suraName,
              style: GoogleFonts.elMessiri(
                  fontSize: 25, fontWeight: FontWeight.w600),
            ),
            Divider(
                thickness: 2,
                color: MyTheme.primary_color,
                ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, Sura.routeName,
                          arguments:SuraModel(suraName: suraName[index],index:index ,),

                          );
                        },
                        child: Center(
                        child: Text(
                          suraName[index],
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 25
                          ),
                        ),
                    ),
                      );
                  },
                  separatorBuilder: (context, index) =>
                      const Divider(thickness: 0.5, color: MyTheme.primary_color),
                  itemCount: suraName.length),
            ),

          ],

        ),

        ),
    );
  }
}
