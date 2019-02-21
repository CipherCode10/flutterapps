import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;



void main() async{


  List  data =await getData();
  print(data);

  runApp(new MaterialApp(

    title:'Ahmed Yaseen',
    home : new Scaffold(
      appBar: AppBar(
        title: new Text('API'),
        backgroundColor:Colors.red[300],
      ),
      body: new Center(

        child: new ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context , int pos){
            if(pos.isOdd)
            return new Divider(color: Colors.purple[500],);
            final newpos = pos ~/ 2;
            return new ListTile(
              title: new Text('Title : ${data[newpos]['title']}',
              style: TextStyle(color: Colors.indigo , fontSize: 15.0),
              ),
              subtitle: Text('Text : ${data[newpos]['body']}',
              style: TextStyle(color: Colors.indigo , fontSize: 13.0),
              ),
              leading: new CircleAvatar(
                child: new Text('P_${data[newpos]['id']}' ,
                style: TextStyle(color: Colors.indigo , fontSize: 12.0),
                ),
                backgroundColor: Colors.red[100],
                foregroundColor: Colors.black,
              ),
              onTap: (){ showMore(context , '${data[newpos]['body']}' , '${data[newpos]['title']}' , '${data[newpos]['userId']}'); }
            );
          } ,
          
           ),
        
      ),
    ),
  ));
}



 Future<Null> showMore(BuildContext context , String val1 , String val2 , String val3) async
 {

  return showDialog<Null>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('$val1'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Title: $val2'),
              Text('Post: $val3'),
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




Future<List> getData() async{

  String url = 'https://jsonplaceholder.typicode.com/posts';
  http.Response respo = await http.get(url);
  return json.decode(respo.body);

}