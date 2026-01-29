import 'package:calcapp/controller/handlebutton.dart';
import 'package:calcapp/core/constant/apptextstyle.dart';
import 'package:calcapp/core/constant/color.dart';
import 'package:calcapp/view/calc_button.dart';
import 'package:flutter/material.dart';

import 'calc_page.dart';

Widget calcPanel(List<String>keys, String expression ,String result,Function(String) onTap){

     return Column(

       children: [
        display(expression,result),
         Expanded(
           child: GridView.builder(
            padding: EdgeInsets.all(15),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
              itemCount: keys.length,
             itemBuilder: (context,index){
              return button(context,keys[index], ()=> onTap(keys[index]));
                     
           
           
             }),
         ),
       ],
     );
       

}


Widget display( String expression, String result){
  return Padding(
    padding: const EdgeInsets.all(12),
    child: SizedBox(
      
      width: double.infinity,
      child: Card(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(expression,
            style: Apptextstyle.resultTextStyle,
            textAlign: TextAlign.end,),
            Text(result,
            style: Apptextstyle.resultTextStyle2,
            textAlign: TextAlign.end,)
          ],
      
        ),
      ),
    ),
  );
}
