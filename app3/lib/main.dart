import 'package:flutter/material.dart';
import 'package:app3/GUI/Home.dart';



void main() async {
  
  var hom = new Home();
  
  List data =await(hom.getData());
 
  for(int i=0 ; i<data.length;i++)
  {
     print('Title : ${data[i]['title']}');
  }

  runApp(new MaterialApp(

  home : new Home(),

));



}