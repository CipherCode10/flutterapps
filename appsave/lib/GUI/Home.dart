import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';



class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return new homestat();
  }

}

class homestat extends State<Home>{


TextEditingController cont = new TextEditingController();


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        title:new Text('Secure data') ,
        backgroundColor:Colors.teal[700] ,
      ),

      body : new Container(

        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),

      child: new Column(
        children: <Widget>[
          new TextField(

            controller: cont,
            decoration: InputDecoration(
              labelText: 'Your name',
              icon: new Icon(Icons.sd_storage,color:Colors.teal[600],),

            ),
          ),

        new RaisedButton(

          onPressed:(){} ,
          child: new Text('Save' ,style: TextStyle(fontSize:20.0, color:Colors.black),),
        ),

        ],
      ),
    ),

    );

  }

}

// Classes thats used to select path

Future<String> get localpath async{             // here we select path

  final path =await getApplicationDocumentsDirectory();
  return path.path;

}


Future<File> get localfile async{                 // here we select file name

  final file =await localpath;
  return new File('$file/data.txt');

}


Future<File> writedt(String val) async{                 // here we select write data

  final file =await localfile;
  return file.writeAsString('$val');

}



Future<String> readdt() async{                 // here we select write data

  try {

    final file = await localfile;
    String data =await file.readAsString();
    return data;

  } catch (e) {

    return 'error: empty file';

  }

}

