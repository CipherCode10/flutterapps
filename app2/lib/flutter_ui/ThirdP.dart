import 'package:flutter/material.dart';


class Third extends StatefulWidget {

  String name;

  Third(this.name);
  



  
  @override
  thirdme createState() => thirdme(name);
}






class thirdme extends State<Third> {

  String name;

  thirdme(this.name);



  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.red,

        title:new Text("Ahmed Yaseen"),

      ),

      body: new Container(

        padding: EdgeInsets.all(10.0),
        child: new Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text("Ahmed Yaseen Third"),

              new Text("Your name is : $name" , style: TextStyle(fontFamily: 'Monaco', fontSize: 20.0 ,decorationColor: Colors.redAccent),),

              new FlatButton(

                onPressed: (){Navigator.of(context).pushNamed('/services');},
                child: new Text("Main Page"),

              ),

              new FlatButton(
                 onPressed: (){Navigator.of(context).pop();},
                 child: new Text("Back"),
              ),


            ],

        ),
      ),
    ) ;


  }
}