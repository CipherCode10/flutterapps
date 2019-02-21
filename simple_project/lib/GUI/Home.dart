import 'package:flutter/material.dart';



class Home extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return new homestat();
  }

}


 class homestat extends State<Home>{

   String val1 = 'Ahmed Yaseen';
   String val2 = 'Khalid Yaseen';

    void onPressBtn1()
    {
      setState(() {
       val1 = 'Hi Ahmed Yaseen';
      });
    }

    void onPressBtn2()
    {
      setState(() {
       val1 = 'Hi Khalid Yaseen';
      });
    }




  @override
  Widget build(BuildContext context) {

    return new Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: new Text("demoApp"),
      ),


      body: new Container(

        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),

        child: new Column(

          children: <Widget>[

            new Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(10.0),
              child: new Center(

                child: new Text('Ahmed Yaseen',
                style: TextStyle(fontSize:20.0 ,color: Colors.lightBlueAccent,),
                ),
              ),
            ),


            new Container(

              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(10.0),

              child : new Center(
              child : new FlatButton(
                color: Colors.indigoAccent,
                textColor: Colors.white,
                onPressed: onPressBtn1,
                child: new Text("First Button" ,
                style: TextStyle(fontSize:20.0 ,),
              textAlign: TextAlign.center,
              ),
              )
            ),
            ),


            new Container(

              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(10.0),

              child :new Center(
              child : new Text('$val1' ,
              style: TextStyle(fontSize:20.0 ,color: Colors.indigoAccent),
              textAlign: TextAlign.center,
            ),
            ),
            ),


            new Center(
              child : new FlatButton(
                 color: Colors.greenAccent,
                textColor: Colors.black,
                onPressed: onPressBtn2,
                child: new Text("Second Button" ,
                style: TextStyle(fontSize:20.0 ,),
              textAlign: TextAlign.center,
                ),
              )
            ),

            new Center(
              child : new Text('$val2',
              style: TextStyle(fontSize:20.0 ,color: Colors.indigoAccent,),
              textAlign: TextAlign.center,
            ),
            ),

           new Container(
             padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(10.0),
              child :new Center(
              child : new Text('Khalid Yaseen' ,
              style: TextStyle(fontSize:20.0 ,color: Colors.deepOrangeAccent,),
              textAlign: TextAlign.center,
            ),
            ),


           ),




          ],
        ),
      ),
    );

  }

  }