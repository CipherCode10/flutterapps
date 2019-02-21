import 'package:flutter/material.dart';
import 'dart:async';


class Nots extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new Notifs();




  }

}



class Notifs extends State<Nots>{



Future<void> _neverSatisfied() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Hi Ahmed Yaseen'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('This is Flutter Framework'),
              Text('This is Alert Dialog'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


String val ='Google';

void setValueOn(String value)
{
  setState(() {
   return val = value ;
  });
}


Future showSimpleDialog() async
{
  await showDialog(context: context,

  builder: (BuildContext context){
    return SimpleDialog(
      title: new Text("Ahmed Yaseen"),
      children: <Widget>[

        new SimpleDialogOption(child: new Text("Yes") ,onPressed: (){Navigator.pop(context, setValueOn('Yes'));},),
        new SimpleDialogOption(child: new Text("No") ,onPressed: (){Navigator.pop(context, setValueOn('No'));},),

      ],
    );
  }
  );
}



  void showBottomSheet()
  {
    showModalBottomSheet(context: context,builder:(BuildContext context){
        return new Container(

          padding: EdgeInsets.all(22.0),

          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

                new Text("Ahmed Yaseen"),
                new FlatButton(

                  onPressed:() => Navigator.pop(context),
                  child: new Text("Close") ,

                ),


            ],
          ),

        );
    });
  }




  final GlobalKey<ScaffoldState> scafstat =new GlobalKey<ScaffoldState>();

  showSnakBar()
  {
    scafstat.currentState.showSnackBar(new SnackBar(content:new Text("Ahmed Yaseen")));
  }


  @override
  Widget build(BuildContext context) {

   return new Scaffold(

     key: scafstat,

     appBar: new AppBar(

       title: new Text("Notifications",
     ),

     ),

     body: new Container(
       padding: new EdgeInsets.all(22.0),

      child: new Center(

          child: new Column(

          children: <Widget>[

            new Card(

              child: new Column(
                children: <Widget>[

                    new Text('$val'),

            new FlatButton(
            onPressed: _neverSatisfied,
            child: new Text("Click Here"),

        ),

            new FlatButton(
            onPressed:showBottomSheet  ,
            child: new Text("Click me"),

        ),


        new FlatButton(
            onPressed:showSimpleDialog  ,
            child: new Text("Click to Go"),

        ),


         new RaisedButton(
            onPressed:showSnakBar  ,
            child: new Text("Click SnackBar"),

        ),



                ],
              ),
            ),


          new Card(

              margin: EdgeInsets.all(22.0),

            color: Colors.tealAccent,
              child: new Column(

                children: <Widget>[

                    new Text('$val'),

            new FlatButton(
            onPressed: _neverSatisfied,
            child: new Text("Click Here"),
            padding: EdgeInsets.all(22.0),

        ),

            new FlatButton(
            onPressed:showBottomSheet  ,
            child: new Text("Click me"),
            padding: EdgeInsets.all(22.0),

        ),


        new FlatButton(
            onPressed:showSimpleDialog  ,
            child: new Text("Click to Go"),
            padding: EdgeInsets.all(22.0),

        ),


         new RaisedButton(
            onPressed:showSnakBar  ,
            child: new Text("Click SnackBar"),
            padding: EdgeInsets.all(10.0),

        ),



                ],
              ),
            ),



          ],
        ),
      ) ,
     ),
   );

  }

}


