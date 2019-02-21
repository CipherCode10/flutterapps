import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


class Student {
  String _id;
  String _name;
  String _age;
  String _city;
  String _dept;
  String _desc;

  Student(this._id, this._name , this._age ,this._city , this._dept , this._desc);


  Student.map(dynamic obj){

    this._name = obj['name'];
    this._age = obj['age'];
    this._city = obj['city'];
    this._dept = obj['dept'];
    this._desc = obj['desc'];
  }

  String get id => _id;
  String get name => _name;
  String get age => _age;
  String get city => _city;
  String get dept => _dept;
  String get desc => _desc;


  Student.fromSnapShot(DataSnapshot snapdata)
  {
      _id = snapdata.value['id'];
      _name = snapdata.value['name'];
      _age = snapdata.value['age'];
      _city = snapdata.value['city'];
      _dept = snapdata.value['dept'];
      _desc = snapdata.value['desc'];
  }


}