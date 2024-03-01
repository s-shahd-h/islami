import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Text('Light',
                style:Theme.of(context).textTheme.bodyMedium,),
              Icon(Icons.done,
                size: 30,
                color: MyTheme.primary_color,)
            ],
          ),
          SizedBox(
              height:MediaQuery.of(context).size.height*0.02
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Text('Dark',
                style:Theme.of(context).textTheme.bodyMedium,
              ),
              Icon(Icons.done,
                size: 30,
                color: MyTheme.primary_color,)
            ],
          ),

        ],
      ),
    );
  }
}
