import 'package:calcapp/core/constant/color.dart';
import 'package:calcapp/core/constant/theme/themestyle.dart';
import 'package:calcapp/view/calc_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(calculatorApp());
}
class calculatorApp extends StatefulWidget {
  const calculatorApp({super.key});

  @override
  State<calculatorApp> createState() => _calculatorAppState();
}

class _calculatorAppState extends State<calculatorApp> {
   bool isDark = false;
   

  @override
 
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: isDark ? AppTheme.dark : AppTheme.light,
    
        home:  CalcPage(isDark: isDark,onThemeChanged: (value){
          setState(() {
            isDark = value;
          });
        },),
       ),
      );
  }
}
