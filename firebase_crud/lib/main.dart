import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_crud/model/student.dart';
import 'package:firebase_crud/ui/list_student.dart';


void main()
{
  runApp(
    new MaterialApp(
      title:'Student DB' ,
      home:ListStudent(),
    ),
  );
}
