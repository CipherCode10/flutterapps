import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;



class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return new homestat();
  }


  Future<List> getData()async{

    String url = 'https://jsonplaceholder.typicode.com/posts';

    http.Response respo =await http.get(url);
    return json.decode(respo.body);

  }

}

class homestat extends State<Home>{

List data ;
var hom = new Home();

  void getDataMe() async
  {
    List data =await(hom.getData());
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: new AppBar(
        backgroundColor: Colors.indigoAccent,
        title: new Text("Order App"),
      ),
      
      body: new Container(

          child : new Center(
          child: new Text("Ahmed Yaseen" , style: TextStyle(color: Colors.indigoAccent , fontSize:18.0),),
          ),

      ),
    );

  }

}