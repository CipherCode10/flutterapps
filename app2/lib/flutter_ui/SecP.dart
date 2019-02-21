import 'package:flutter/material.dart';
import 'package:app2/Functions/globalState.dart';
import 'package:app2/flutter_ui/ThirdP.dart';



class Second extends StatefulWidget {
  @override
  secondme createState() => secondme();
}

class secondme extends State<Second> {


globalState store = globalState.instance;

TextEditingController name;

@override
  void initState()
  {
    name = new TextEditingController();

  }


onClickSend()
{
  Navigator.push(context , new MaterialPageRoute(builder: (BuildContext context) => new Third(name.text) ) );
}



  Widget build(BuildContext context) {

        return new Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.pinkAccent,

        title:new Text("Ahmed Yaseen"),

      ),

      body: new Container(

        padding: EdgeInsets.all(10.0),
        child: new Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text("Ahmed Yaseen Second"),

              new Text('Your Name is ${store.get('name')}'),

               new TextField(

                decoration: InputDecoration(labelText: 'Your Name'),
                controller: name,

              ),


              new FlatButton(

                onPressed:onClickSend ,
                child: new Text("Next Page"),

              ),

              new FlatButton(

                onPressed: (){Navigator.of(context).pushNamed('/Home');},
                child: new Text("Back"),

              ),


            ],

        ),



      )

    ) ;


  }
}