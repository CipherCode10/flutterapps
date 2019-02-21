import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return new homestat();
  }

}



class homestat extends State<Home>{

  void onPressMe() async
  {
    Map inf = await getData();
    print(inf);
  }


  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(

      appBar: AppBar(

        title: new Text('Weather'),
        backgroundColor: Colors.blueGrey[300],

        actions: <Widget>[

          new IconButton(icon:new Icon(Icons.home), onPressed: onPressMe,)

        ],
      ),

      body: new Stack(

        children: <Widget>[

          new Center(

            child: new Image.asset('images/clo3.jpg' ,
            fit: BoxFit.fill,
            width: 3000,
            height:2200,
            ),

          ),

          new Container(
            padding: EdgeInsets.only(left:20.0,top:90.0),
            child: new Text('Iraq',
            style: TextStyle(fontSize: 30.0 , color:Colors.blue[300],fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
            ),

          ),


          new Container(
            child: new Image.asset('images/snowflake.png',width: 60,height:60,),
            margin: EdgeInsets.only(left:250.0,top:90.0),
          ),

          new Container(
            padding: EdgeInsets.only(left:20.0,top:190.0),
            child: myData(),
          ),



        ],
      ),

      


    );

  }

  Future<Map> getData()async {
    String url = 'https://api.apixu.com/v1/current.json?key=0a382597c527467485e133123192002&q=Iraq';
    http.Response respo = await http.get(url);
    return json.decode(respo.body);

  }

  Widget myData ()
  {
    return new FutureBuilder(future: getData(), builder: (BuildContext context , AsyncSnapshot<Map> snapshot){

      if(snapshot.hasData)
      {
        Map content = snapshot.data;
      return new Container(
        child: new ListTile(
          subtitle: new Text(content['current']['temp_f'].toString(),
            style: TextStyle(fontSize: 30.0 , color:Colors.blue[300],fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
            ),

          title: new Text(content['current']['temp_c'].toString(),
            style: TextStyle(fontSize: 30.0 , color:Colors.blue[300],fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
            ),
        ),
      );
      }
      else
      {
        return new Container(



        );
      }


    });
  }

}