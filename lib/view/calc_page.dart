import 'package:calcapp/controller/handlebutton.dart';
import 'package:calcapp/core/constant/apptextstyle.dart';
import 'package:calcapp/core/constant/color.dart';
import 'package:calcapp/view/calc_pabel2.dart';
import 'package:calcapp/view/calc_panel.dart';
import 'package:calcapp/model/history.dart';
import 'package:flutter/material.dart';
String expression = "";
String result = "0";
final List<String> history = [];
     

class CalcPage extends StatefulWidget {
  bool isDark = false;
  final Function(bool) onThemeChanged;

   CalcPage({super.key , required this.isDark,required this.onThemeChanged});
  

  @override
  State<CalcPage> createState() => _CalcPageState();


}

class _CalcPageState extends State<CalcPage> {

  final List<String> keys = [
    "c",
    "⌫",
    "()",
    "+",
    "7",
    "8",
    "9",
    "-",
    "4",
    "5",
    "6",
    "X",
    "1",
    "2",
    "3",
    "/",
    ".",
    "0",
    "%",
    "="
  ];
 
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isWide = width >=900;
    return Scaffold(
      
         
        appBar: AppBar(
          backgroundColor: widget.isDark?AppColor.backgroundColor:Colors.white,
          
          title: Text("Calculator",
          style: TextStyle(
            color: AppColor.secondaryColor,
            
            fontSize : 30,
          ),),
          actions: [
            Icon(widget.isDark?Icons.dark_mode:Icons.light_mode_rounded,
            color: AppColor.secondaryColor,
            ),
            Switch(
              value: widget.isDark, 
               onChanged: widget.onThemeChanged,
            )
         
 
          
          ],
        ),
        body: isWide?
        Row(
          children: [
            Expanded(child: calcPanel2(keys,expression,result,(String Key)=>setState(() => buttonPress(Key))))],
        ) 
        : Column(
          children: [
            Expanded(child: calcPanel(keys,expression,result,(String Key)=>setState(() => buttonPress(Key)) 
              
            )),
            
            
            SizedBox(height:100,child:  historyPanel(history,(){
              setState(() {
                history.clear();
              });
            })),
          ],
        ),
         
            );
          
    
  }


}



