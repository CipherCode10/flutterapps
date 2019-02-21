import 'package:flutter/material.dart';



class Inputs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return new Inputtype();




  }

}



class Inputtype extends State<Inputs>{

String name='';
bool value1 = true;
bool value2 = false;

  void onChangeValue(String value)
  {
    setState(() {
      name='Changed by : $value';
    });
  }

  void onSubmitValue(String value2)
  {
    setState(() {
      name='Submitted by : $value2';
    });
  }

  void onChangeBox(bool val1)
  {
    setState(() {
      value1 = val1;
    });
  }


  void listBox(bool val2)
    {
      setState(() {
        value2 = val2;
      });
    }






  @override
  Widget build(BuildContext context) {

   return new Scaffold(

     appBar: new AppBar(

       title: new Text("Ahmed Yaseen",

     ),

     ),

     body: new Container(
       padding: new EdgeInsets.all(22.0),

      child: new Column(

        mainAxisAlignment : MainAxisAlignment.center,

        children: <Widget>[

          new Text('$name'),

          new TextField(
            autocorrect: true,
            style: new TextStyle(fontSize: 16.0,color: Colors.black),
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: new InputDecoration(
              icon: new Icon(Icons.people),
              hintText: "Enter your name",
              hintStyle: TextStyle(color: Colors.grey),
              labelText: "Name",
              labelStyle: TextStyle(fontSize: 20.0,color: Colors.black),
              contentPadding: EdgeInsets.all(5.1)
            ),
            onChanged: onChangeValue,
            onSubmitted: onSubmitValue,
          ),


          new Checkbox(value: value1,onChanged: onChangeBox,),

            new CheckboxListTile(
              value: value2,
              onChanged: listBox,
              title: new Text("Press here"),
              activeColor: Colors.tealAccent,
              subtitle: new Text("Google Flutter"),
              secondary: new Icon(Icons.phone),
              ),


          new Switch(value: value1, onChanged: onChangeBox,),

          new SwitchListTile(
            value: value2,
            onChanged: listBox,
            activeColor: Colors.deepPurpleAccent,
            secondary: new Icon(Icons.add_alert),
            ),


        ],

      ) ,

     ),

      drawer: new Drawer(

        child: new Container(

          padding: EdgeInsets.all(22.0),

          child : new Column(

              mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              new FlatButton(

                onPressed: () => Navigator.pop(context),child: new Text("Close"),


              ),

                new Text('$name'),

          new TextField(
            autocorrect: true,
            style: new TextStyle(fontSize: 16.0,color: Colors.black),
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: new InputDecoration(
              icon: new Icon(Icons.people),
              hintText: "Enter your name",
              hintStyle: TextStyle(color: Colors.grey),
              labelText: "Name",
              labelStyle: TextStyle(fontSize: 20.0,color: Colors.black),
              contentPadding: EdgeInsets.all(5.1)
            ),
            onChanged: onChangeValue,
            onSubmitted: onSubmitValue,
          ),


          new Checkbox(value: value1,onChanged: onChangeBox,),

            new CheckboxListTile(
              value: value2,
              onChanged: listBox,
              title: new Text("Press here"),
              activeColor: Colors.tealAccent,
              subtitle: new Text("Google Flutter"),
              secondary: new Icon(Icons.phone),
              ),


          new Switch(value: value1, onChanged: onChangeBox,),

          new SwitchListTile(
            value: value2,
            onChanged: listBox,
            activeColor: Colors.deepPurpleAccent,
            secondary: new Icon(Icons.add_alert),
            ),



            ],
          ),



        ),


      ),




   );

  }

}


