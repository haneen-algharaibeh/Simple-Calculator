import 'package:calcapp/core/constant/apptextstyle.dart';
import 'package:calcapp/core/constant/color.dart';
import 'package:flutter/material.dart';

Widget   historyPanel(List<String>history,VoidCallback onClear){
  return Card(
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("History",
              style:  TextStyle(color: AppColor.secondaryColor),),
            ),
            IconButton(
              onPressed: history.isEmpty?null:onClear, 
              icon: Icon(Icons.delete_forever_rounded,color: Colors.grey,))
          ],
        ),
    
        Expanded(
          child: history.isEmpty 
          ? Text("Empty",
          style: TextStyle(color: AppColor.secondaryColor),)
          : ListView.builder(
            itemBuilder: (context,index)=>
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(history[index],style: TextStyle(color: AppColor.textColor3),),
              )
            ,
            itemCount: history.length,
            
          ),
         
        ),
     
      ],
    ),
  );
}
