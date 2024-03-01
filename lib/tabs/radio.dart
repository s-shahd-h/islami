import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class RadioPage extends StatelessWidget {
  static const String routeName='radio';
  const RadioPage({super.key});

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
body: Center(
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 512,
        height: 222,
        decoration: BoxDecoration(
          image: DecorationImage( image: AssetImage('assets/images/old-radio-.png'))
        ),
      ),
      SizedBox(height: 50,),
      Text('اذاعة القرآن الكريم',
      style: Theme.of(context).textTheme.bodyLarge,),
      SizedBox(height: 50,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Icon(Icons.skip_previous,size: 30,color:MyTheme.primary_color,),
          Icon(Icons.play_arrow,size: 50,color:MyTheme.primary_color,),
          Icon(Icons.skip_next,size: 30,color:MyTheme.primary_color,),
        ],
      )
    ],
  ),
),
    ),
    );
  }
}
