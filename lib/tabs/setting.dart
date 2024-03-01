import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/langBottomSheet.dart';
import 'package:islami/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../themeBottomSheet.dart';

class Setting extends StatelessWidget {
  static const String routeName='setting';
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Container(
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
   body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: MyTheme.primary_color),
                  borderRadius: BorderRadius.circular(25)),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder:(context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * .70,
                          child: LangBottomSheet(),
                        );
                      },);
                },
                child: Text(
                  "Arabic",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Text(
          AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color:MyTheme.primary_color),
                  borderRadius: BorderRadius.circular(25)),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isDismissible: true,
                    isScrollControlled: true,
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * .70,
                        child: ThemeBottomSheet(),
                      );
                    },
                  );
                },
                child: Text(
                  "Light",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              )),
        ],
      ),
    ),
      ),
    );
  }
}
