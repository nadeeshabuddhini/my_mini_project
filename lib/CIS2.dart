import 'package:flutter/material.dart';
import 'package:student_attendance/Course_detail.dart';

class CIS2 extends StatefulWidget{
  @override
  CourseDepState createState()=>new CourseDepState();
}
class CourseDepState extends State<CIS2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:AppBar(
        title: Text('CIS'
        ),
      ),
     body: Column(
       children: <Widget>[
        Container(
          height: 140.0,
          width: 400.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 10.0,
              child:Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("YEAR 01",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                  ),
                  new Row(
                    children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.only(top:10.0,left: 20.0),
                       child: RaisedButton(onPressed:(){
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                             builder: (context)=>Course_detail())
                         );
                       },
                         color: Colors.blue,
                       child: Text("Semester 1"),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top:10.0,left: 80.0),
                       child: RaisedButton(onPressed:(){
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder: (context)=>Course_detail())
                         );
                       },
                           color: Colors.blue,
                         child: Text("Semester 2"),
                       ),
                     ),
                    ],
                  )
                ],
              )

            ),
          ),
        ),
        Container(
          height: 140.0,
          width: 400.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
                elevation: 10.0,
                child:Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("YEAR 02",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ),
                    new Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,left: 20.0),
                          child: RaisedButton(onPressed:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>Course_detail())
                            );
                          },
                            color: Colors.blue,
                            child: Text("Semester 1"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,left: 80.0),
                          child: RaisedButton(onPressed:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>Course_detail())
                            );
                          },
                            color: Colors.blue,
                            child: Text("Semester 2"),
                          ),
                        ),
                      ],
                    )
                  ],
                )

            ),
          ),
        ),
        Container(
          height: 140.0,
          width: 400.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
                elevation: 10.0,
                child:Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("YEAR 03",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ),
                    new Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,left: 20.0),
                          child: RaisedButton(onPressed:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>Course_detail())
                            );
                          },
                            color: Colors.blue,
                            child: Text("Semester 1"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,left: 80.0),
                          child: RaisedButton(onPressed:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>Course_detail())
                            );
                          },
                            color: Colors.blue,
                            child: Text("Semester 2"),
                          ),
                        ),
                      ],
                    )
                  ],
                )

            ),
          ),
        ),
        Container(
          height: 140.0,
          width: 400.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
                elevation: 10.0,
                child:Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("YEAR 04",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ),
                    new Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,left: 20.0),
                          child: RaisedButton(onPressed:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>Course_detail())
                            );
                          },
                            color: Colors.blue,
                            child: Text("Semester 1"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,left: 80.0),
                          child: RaisedButton(onPressed:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>Course_detail())
                            );
                          },
                            color: Colors.blue,
                            child: Text("Semester 2"),
                          ),
                        ),
                      ],
                    )
                  ],
                )

            ),
          ),
        ),
       ],
     ),
    );
  }
}