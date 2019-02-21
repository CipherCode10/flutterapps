import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_crud/model/student.dart';




class StudentScreen extends StatefulWidget{

  final Student  student ;
  StudentScreen(this.student);


  @override
  State<StatefulWidget> createState() => new screenstate();

}



final studentref = FirebaseDatabase.instance.reference().child('Students');


class screenstate extends State<StudentScreen>{

  TextEditingController namecont;
  TextEditingController agecont;
  TextEditingController citycont;
  TextEditingController deptcont;
  TextEditingController desccont;

  @override
  void initState() {
    
    super.initState();
    namecont = new TextEditingController(text: widget.student.name);
    agecont  = new TextEditingController(text: widget.student.age);
    citycont = new TextEditingController(text: widget.student.city);
    deptcont = new TextEditingController(text: widget.student.dept);
    desccont = new TextEditingController(text: widget.student.desc);

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,

      appBar: AppBar(
        title: Text('Student list'),
        backgroundColor: Colors.orange[800],
      ),
      body: new Container(
        margin: EdgeInsets.only(top:5.0),
        child: Column(
          children: <Widget>[
            TextField(
              style: TextStyle(color: Colors.black , fontSize:12.0),
              controller: namecont,
              decoration:InputDecoration(
                icon: Icon(Icons.person_outline,color: Colors.black,),
                hintText: 'Your name',
              ) ,
            ),
            
            TextField(
              style: TextStyle(color: Colors.black , fontSize:12.0),
              controller: agecont,
              decoration:InputDecoration(
                icon: Icon(Icons.local_florist,color: Colors.black,),
                hintText: 'Your age',
              ) ,
            ),
           

            TextField(
              style: TextStyle(color: Colors.black , fontSize:12.0),
              controller: citycont,
              decoration:InputDecoration(
                icon: Icon(Icons.location_city,color: Colors.black,),
                hintText: 'Your province',
              ) ,
            ),
            

            TextField(
              style: TextStyle(color: Colors.black , fontSize:12.0),
              controller: deptcont,
              decoration:InputDecoration(
                icon: Icon(Icons.party_mode,color: Colors.black,),
                hintText: 'Your department',
              ) ,
            ),
           
            TextField(
              style: TextStyle(color: Colors.black , fontSize:12.0),
              controller: desccont,
              decoration:InputDecoration(
                icon: Icon(Icons.description,color: Colors.black,),
                hintText: 'Your comment',
              ) ,
            ),
           

            FlatButton(
              onPressed: (){
                if(widget.student.id != null)
                {
                  studentref.child(widget.student.id).set({
                    'name' : namecont ,
                    'age' : agecont ,
                    'city' : citycont ,
                    'dept' : deptcont ,
                    'desc' : desccont
                  }).then((_){
                    Navigator.pop(context);
                  }
                  );
                }
                else{
                  studentref.push().set({
                    'name' : namecont ,
                    'age' : agecont ,
                    'city' : citycont ,
                    'dept' : deptcont ,
                    'desc' : desccont
                  }).then((_){
                    Navigator.pop(context);
                  });
                }
              },
              child: (widget.student.id != null) ? Text('Update') :Text('Add'),
            )
          ],
        ),
      ),

    );

  }

}