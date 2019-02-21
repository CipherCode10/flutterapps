import 'package:flutter/material.dart';
import 'package:app2/flutter_ui/FirstP.dart';
import 'package:app2/flutter_ui/SecP.dart';
import 'package:app2/flutter_ui/ThirdP.dart';

void main() => runApp(new MaterialApp(home: new MyApp(),));


// This is Navigations


class MyApp extends StatelessWidget{

  TextEditingController name;

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(

      title: "Navigation",
      routes: <String , WidgetBuilder>{

        '/Home':(BuildContext context) => new First(),
        '/services':(BuildContext context) => new Second(),
        '/About':(BuildContext context) => new Third('Test'),

      },

      home:new First(),

    );

  }

}


