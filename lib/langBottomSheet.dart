import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';

class LangBottomSheet extends StatelessWidget {
  const LangBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              InkWell(
                onTap: (){
               provider.setLanguage('en');
                }, 
                child: Text('English',
                
                style:
                provider.language=='en'?
                // Theme.of(context).textTheme.bodyLarge:
                GoogleFonts.elMessiri(color: MyTheme.primary_color,fontSize: 30, fontWeight: FontWeight.bold):
                Theme.of(context).textTheme.bodyMedium),
              ),
              if(provider.language=='en')...[
                     Icon(Icons.done,
            size: 30,
            color: MyTheme.primary_color,)
              ]
       
        ],
            
          ),
          SizedBox(
            height:MediaQuery.of(context).size.height*0.02
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              InkWell(
                onTap: () {
                  provider.setLanguage('ar');
                },
                 child: Text('Arabic',
                
                style:
                provider.language=='ar'?
                // Theme.of(context).textTheme.bodyLarge:
                GoogleFonts.elMessiri(color: MyTheme.primary_color,fontSize: 30, fontWeight: FontWeight.bold):
                Theme.of(context).textTheme.bodyMedium),
              ),
              if(provider.language=='ar')...[
                     Icon(Icons.done,
            size: 30,
            color: MyTheme.primary_color,)
              ]
            ],
          ),

        ],
      ),
    );
  }
}
