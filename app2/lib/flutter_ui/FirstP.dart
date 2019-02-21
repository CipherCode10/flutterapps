import 'package:app2/Functions/globalState.dart';
import 'package:flutter/material.dart';



class First extends StatefulWidget {
  @override
  firstme createState() => firstme();
}

class firstme extends State<First> {

  TextEditingController name;

  globalState store = globalState.instance;

  @override
  void initState()
  {
    name = new TextEditingController();
    store.set('name', '');
    name.text = store.get('name');
  }




onClickBtn()
{
  store.set('name', name.text);

  Navigator.of(context).pushNamed('/services');

}





  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.tealAccent,

        title:new Text("Ahmed Yaseen"),

      ),

      body: new Container(

        padding: EdgeInsets.all(10.0),
        child: new Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text("Ahmed Yaseen First"),

              new TextField(

                decoration: InputDecoration(labelText: 'Your Name'),
                controller: name,

              ),

              new FlatButton(

                onPressed: onClickBtn,
                child: new Text("Next Page"),

              ),

              new FlatButton(

                onPressed: (){Navigator.of(context).pushNamed('/About');},
                child: new Text("Third Page"),

              ),


            ],

        ),



      )

    ) ;


  }
}