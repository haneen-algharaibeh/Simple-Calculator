import 'dart:developer';

import 'package:calcapp/view/calc_page.dart';
import 'package:flutter/material.dart';


void buttonPress(String key){


if("0123456789".contains(key)){
  expression += key;
  return;
}

if("+-X/".contains(key)){
    if(expression.isEmpty)return;
  final lastExp  = expression[expression.length - 1];
  if (isOperator(lastExp)){
     expression = expression.substring(0,expression.length-1)+key;
     return;
  }
  expression += key;
  return;
}


if (key == "c"){
 expression = "";
 result = "0" ;
  return;
}
if (key == "⌫"){
  if (expression.isNotEmpty){
    expression = (expression.substring(0,expression.length-1));
  }
  return;
}

if (key == "="){
  if (expression.isEmpty)return;
    result = calculation(expression);
    history.add("$expression = $result");
    expression = result.toString();
  return;
   
}

if (key == "."){
  String lastNum = "";
  for (int i = expression.length-1; i >=0; i--){
    if("1234567890".contains(expression[i])|| expression[i] == "."){
      lastNum += expression[i];

    }
    break;
  }
  if(!lastNum.contains(".")){
    expression += ".";
  }
  }
  return;
}







bool isOperator(String K){

  return K == "+"|| K == "-" ||  K == "*"||  K == "/";
}

String calculation(String expexpressionr){
 try{
  var e = expression.replaceAll("X", "*");
  final tokens = tokenz(e);
  if(tokens.isEmpty) return "";
  final value = evaluate(tokens);
  return value.toString();

 }catch(e){
  print(e);
  return "error";
 }



}



List<String>tokenz(String exp){
  List<String>tokens = [];
  String cur = "";
  for (int j = 0 ; j <exp.length; j++){
    final character = exp[j];
    final isOperator = character == "+" || character == "-" || character == "*" || character == "/";

    if (isOperator) {
      if(cur.trim().isNotEmpty){
        tokens.add(cur.trim());
        cur = "";

      }
      tokens.add(character);
    }else {
      cur += character ;
    }

  }
  if (cur.trim().isNotEmpty){
    tokens.add(cur.trim());

  } 
  return tokens;
}



double evaluate(List<String> tokens) {
  final List<String>token1 = [];
  int i = 0;
  while (i<tokens.length){
    final t = tokens[i];
    if (t == "*" || t == "/"){
      final left = double.parse(token1.removeLast());
      final right = double.parse(tokens[i+1]);
      final res = t == "*"? left*right : left / right ;
      token1.add(res.toString());
      i +=2;

    }else {
      token1.add(t);
      i++;
    }
  }

double result1 = double.parse(token1[0]);
i = 1 ;
while (i <token1.length){
  final opera = token1[i];
  final val = double.parse(token1[i+1]);
  if (opera == "+"){
    result1 += val;
  }
    if (opera == "-"){
    result1 -= val;
  }
  i+=2;
}
  return result1;

  }


