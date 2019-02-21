import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return new Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,

      child : new Row(


        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[

           new Text("Ahmed Yaseen , ",
            textDirection: TextDirection.ltr,
            style: TextStyle( fontWeight: FontWeight.w100 , fontSize: 10.0 , color:Colors.white),
            ),

            new Text("Mustafa Yaseen , ",
            textDirection: TextDirection.ltr,
            style: TextStyle( fontWeight: FontWeight.w100 , fontSize: 10.0 , color:Colors.white),
            ),

           Expanded(


            child:  new Text("Khalid Yaseen , ",
            textDirection: TextDirection.ltr,
            style: TextStyle( fontWeight: FontWeight.w100 , fontSize: 10.0 , color:Colors.black),
            ),


           ),


        ],

      ),

    );
  }

}











// child : new Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[

//           new Container(
//             color: Colors.blueGrey,
//             alignment: Alignment.center,

//             child: new Text("Ahmed Yaseen",
//             textDirection: TextDirection.ltr,
//             style: TextStyle( fontWeight: FontWeight.w100 , fontSize: 30.0 , color:Colors.white),
//             ),

//           ),

//              new Text("Mustafa Yaseen",
//             textDirection: TextDirection.ltr,
//             style: TextStyle( fontWeight: FontWeight.w100 , fontSize: 25.0 , color:Colors.blueAccent),
//             ) ,

//             new Text("Khalid Yaseen",
//             textDirection: TextDirection.ltr,
//             style: TextStyle( fontWeight: FontWeight.w100 , fontSize: 20.0 , color:Colors.blueAccent),
//             )

         

//         ],

//       ),


      