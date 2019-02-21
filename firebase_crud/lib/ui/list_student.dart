import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';
import 'package:firebase_crud/model/student.dart';



class ListStudent extends StatefulWidget
{
  @override
  listStat createState() =>  new listStat();
}


final studentref = FirebaseDatabase.instance.reference().child('Students');



class listStat extends State<ListStudent>
{


  List<Student> items ;

  StreamSubscription<Event> onStudentadd ;
  StreamSubscription<Event> onStudentchange;

  @override
  void initState() {

    super.initState();
    items = new List();
    onStudentadd =studentref.onChildAdded.listen(stuadded);
    onStudentchange =studentref.onChildChanged.listen(stuchanged);

  }

  @override
  void dispose() {

    super.dispose();
    onStudentadd.cancel();
    onStudentchange.cancel();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Student DB',
      home:Scaffold(
        appBar: AppBar(
          title: Text('Student info',),
          centerTitle: true,
          backgroundColor: Colors.red[100],
        ),
        body: Center(

          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context , pos){
              return Column(

                children: <Widget>[
                  Divider(color: Colors.grey[200],),
                  ListTile(
                    title: Text('${items[pos].name}',style: TextStyle(color: Colors.black ,fontSize:14.0),),
                    subtitle: Text('${items[pos].desc}',style: TextStyle(color: Colors.black ,fontSize:10.0),),
                    leading: Column(
                      children: <Widget>[
                        CircleAvatar(
                            backgroundColor: Colors.orange[200],
                            radius: 14.0,
                            child: Text('${items[pos].id}',style: TextStyle(color: Colors.black ,fontSize:8.0),),
                        ),

                        IconButton(
                          icon: Icon(Icons.delete_outline,color: Colors.red[300],),
                          onPressed: () =>deletStud(context , items[pos] , pos)
                        )
                      ],
                    ),
                    onTap: () => navStud(context , items[pos]) ,
                  ),
                ],
              );
            },
            padding: EdgeInsets.only(top:5.1),
            ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_box , color:Colors.white,),
          backgroundColor: Colors.red[400],
          onPressed: () => creatUser(context),
        ),
      ),
    );


  }


  void stuadded(Event ev)
  {
    setState(() {
     items.add(new Student.fromSnapShot(ev.snapshot));
    });
  }

  void stuchanged(Event ev)
  {
    var oldvalue =items.singleWhere((student)=> student.id == ev.snapshot.key);
    setState(() {
     items[items.indexOf(oldvalue)] = new Student.fromSnapShot(ev.snapshot);
    });
  }

  void deletStud(BuildContext context , Student student , int position) async
  {
    await studentref.child(student.id).remove().then((_){
      setState(() {
       items.removeAt(position);
      });
    });
  }

  void navStud(BuildContext context , Student student) async
  {
    await Navigator.push(context,
    MaterialPageRoute(builder: (context)=> StudentScreen(student)),
    );
  }

  void creatUser(BuildContext context ) async
  {
    await Navigator.push(context,
    MaterialPageRoute(builder: (context)=> StudentScreen(Student(null, '', '', '', '', '')),
    )
    );
  }

}




