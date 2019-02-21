import 'package:flutter/material.dart';

class ScafHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    onClickPrint()
    {
      print("Ahmed Yaseen");
    }

    onClickPrint2()
    {
      print("Khalid Yaseen");
    }

     _onClickPrint3()
    {
      print("This is private function");
    }


     onClickPrint4()
    {
      print("This is Google Developers");
    }


    showMe()
    {
      print("This is Ahmed Yaseen");
    }



    return new Scaffold(

      backgroundColor: Colors.tealAccent,

      appBar: new AppBar(
        title: new Text("Ahmed Yaseen"),
        backgroundColor: Colors.greenAccent.shade700,
        actions: <Widget>[

            new IconButton(icon: new Icon(Icons.alarm),
            onPressed:onClickPrint),

            new IconButton(icon: new Icon(Icons.print),
            onPressed: onClickPrint2),

            new IconButton(icon: new Icon(Icons.panorama_vertical),
            onPressed: _onClickPrint3),

            new IconButton(icon: new Icon(Icons.panorama_vertical),
            onPressed: showMe),



        ],
      ),

      body: new Container(

        alignment: Alignment.center,
        child : new Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

             new IconButton(icon: new Icon(Icons.people),
            onPressed: onClickPrint4),


             new IconButton(icon: new Icon(Icons.add_a_photo),
            onPressed: onClickPrint4),

             new IconButton(icon: new Icon(Icons.perm_identity),
            onPressed: onClickPrint4),

            new Text("Ahmed Yaseen",
            textDirection: TextDirection.ltr,
            style: new TextStyle(color: Colors.grey,fontSize: 30.0 , )
            ),

            new InkWell(

              child : new Text("InkWell",
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(color: Colors.redAccent.shade700,fontSize: 30.0 , )
                  ),

              onDoubleTap: () => debugPrint("Here Double Tab"),
              onTap:() => debugPrint("Here Single Tab") ,
            ),


          ],

        ),

      ),


      floatingActionButton: new FloatingActionButton(

          onPressed: showMe,
          tooltip: "Google Developers",
          child: new Icon(Icons.share),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
      ),








      bottomNavigationBar: new BottomNavigationBar(

        items:[
          new BottomNavigationBarItem(icon: new Icon(Icons.home),title: new Text("Home")),
          new BottomNavigationBarItem(icon: new Icon(Icons.map),title: new Text("Maps")),
          new BottomNavigationBarItem(icon: new Icon(Icons.add),title: new Text("Add")),
          new BottomNavigationBarItem(icon: new Icon(Icons.contact_mail),title: new Text("About us")),

        ],

        onTap: (int x)=> debugPrint('index $x'),
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.tealAccent,


      ),

    );


  }




}

