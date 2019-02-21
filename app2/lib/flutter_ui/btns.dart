import 'package:flutter/material.dart';



class Butns extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new homestat();




  }

}



class homestat extends State<Butns>{


  String name = '';
  String result = '';

  void showMe()
    {
      setState(() {
        name = 'Ahmed Yaseen';
      });
    }

  void showMe2(String text)
  {
    setState(() {
        name = text;
      });
  }

  void clickIcon()
  {
    setState(() {
        result = 'Hi Google ';
      });
  }






  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: new AppBar(
        backgroundColor:Colors.tealAccent,
        title: new Text("Buttons"),
        ),

      body: new Container(

        padding: new EdgeInsets.all(22.0),
        child: new Column(

          children: <Widget>[

             new Text('$name'
              ),
              new RaisedButton(
                onPressed: showMe,
                child:new Text('Click me') ,
              ),

              new RaisedButton(
                onPressed:() => showMe2('Google'),
                child:new Text('Click me 2') ,
              ),


              new FlatButton(

                  onPressed: () => showMe2('Google Developers'),
                  child: new Text("Flat Click"),
                  
              ),


              new Text('Welcome & : $result'),
              new IconButton(icon: new Icon(Icons.sentiment_neutral),onPressed:clickIcon,),






          ],




        )

      ),



    );

  }

}


