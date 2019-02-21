import 'package:flutter/material.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return new homestat();
  }

}



class homestat extends State<Home>{

  final TextEditingController usercont = new TextEditingController();
  final TextEditingController passcont = new TextEditingController();


String userinfo = '';

  void onLogin()
  {
    setState(() {
     if(usercont.text.trim().isEmpty && passcont.text.trim().isEmpty  )
     {
       userinfo = 'Please enter your details';
     }else{
       userinfo = 'Your name is : ${usercont.text}';
     }
    });
  }

  void onClear()
  {
    setState(() {
     usercont.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(

      appBar: new AppBar(

        title: new Text('Login'),
        backgroundColor: Colors.orange,
      ),

      body : new Container(
        padding: EdgeInsets.all(2.0),
        margin: EdgeInsets.only(top:100.0 , bottom:20.0 ),
        alignment: Alignment.center,

        child: new ListView(

          children: <Widget>[
            new Image.asset('images/login.png' ,width:100, height:100,),

            new Container(
              padding: EdgeInsets.all(1.0),
              margin: EdgeInsets.all(1.0),
              child: new Column(

                children: <Widget>[

                    new TextField(
                      style: TextStyle(fontSize: 18.1, color:Colors.black,fontFamily:'opensans'),
                      controller: usercont,
                      decoration: InputDecoration(
                        icon: new Icon(Icons.person_outline , color: Colors.orange,),
                        hintText: 'Your name',
                      ),
                    ),

                ],
              ),
            ),

            new Padding(padding: EdgeInsets.all(1.0),),

            new Container(
              padding: EdgeInsets.all(1.0),
              margin: EdgeInsets.all(1.0),
              child: new Column(

                children: <Widget>[

                    new TextField(
                      style: TextStyle(fontSize: 18.1, color:Colors.black,fontFamily:'opensans'),
                      obscureText:true,
                      controller: passcont,
                      decoration: InputDecoration(
                        icon: new Icon(Icons.lock_outline , color: Colors.orange,),
                        hintText: 'Your password',
                      ),
                    ),

                ],
              ),
            ),


            new Padding(padding: EdgeInsets.all(2.0),),

            new Center(

              child : new Row(

              children: <Widget>[

                new Container(
                  margin: EdgeInsets.only(left:20.0 , top:20.0),

                  child:new FlatButton(
                    color:Colors.orange,
                    onPressed: onLogin,
                    child : new Text("Login" ,
                    style: TextStyle(color: Colors.white,fontSize:18.0,),
                    ),
                    ),

                ),

                new Container(
                  margin: EdgeInsets.only(left:120.0 , top:20.0),

                  child: new FlatButton(
                    color:Colors.purple,
                    onPressed: onClear,
                    child : new Text("Clear" ,
                    style: TextStyle(color: Colors.white,fontSize:18.0,),
                ),
                ),
                ),

              ],
              ),
            ),

            new Container(
                  margin: EdgeInsets.only(top:20.0,left:80.0 ,right:10.0 ,bottom:10.0),
                  child: new Text('$userinfo',style: TextStyle(color: Colors.black,fontSize:18.0, ),),
                ),

           

          ],

        ),

      ),

    );

  }

}