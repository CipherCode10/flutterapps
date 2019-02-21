import 'package:flutter/material.dart';





class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return new Material(
      
      color: Colors.lightBlueAccent,
      child : new Center(
        child : new Text("Ahmed Yaseen",
        textDirection: TextDirection.ltr,
        style: new TextStyle(fontWeight:FontWeight.bold ,fontStyle:FontStyle.italic, fontSize: 25.0,
      ),
      ),
      ),
    );

  }

}