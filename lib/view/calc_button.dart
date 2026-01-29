
import 'package:calcapp/core/constant/apptextstyle.dart' ;
import 'package:calcapp/core/constant/theme/themestyle.dart';
import 'package:flutter/material.dart';

Widget button(BuildContext context,String key ,VoidCallback onTap){
      return  ElevatedButton(
        onPressed: onTap, 
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(50),
          ),
          backgroundColor:  Theme.of(context).colorScheme.surface,
        ),
        child:   Text(
                        key,
                        style: Apptextstyle.buttonTextStyle,
                        ),);

}


