import 'package:flutter/material.dart';
import 'package:student_attendance/student_detail.dart';
import 'package:student_attendance/CIS1.dart';

class StudentDep extends StatefulWidget{
  @override
  CourseDepState createState()=>new CourseDepState();
}
class CourseDepState extends State<StudentDep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Departments'
        ),
      ),

      body: new ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: new GestureDetector(
                child: new Card(
                  elevation: 10.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Image.asset("images/dep1.png",
                        height: 100.0,
                        width: 100.0,
                      ),


                      new Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left:10.0),
                          child: Text(
                            "Computing & Information Systems",
                            style:TextStyle(
                                fontSize:20.0,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color:Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                onTap:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>CIS1())
                  );
                }
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: new GestureDetector(
                child: new Card(
                  elevation: 10.0,
                  child: new Row(
                    children: <Widget>[
                      new Image.asset("images/dep2.png",
                        height: 100.0,
                        width: 100.0,
                        fit: BoxFit.cover,),
                      new SizedBox(height:10.0,
                      ),
                      new Expanded(
                        child:Padding(
                          padding: EdgeInsets.only(left:10.0),
                          child: Text("Food Sciences & Technology",
                            style:TextStyle(
                                fontSize:20.0,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color:Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>student_detail())
                  );
                }
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: new GestureDetector(
                child: new Card(
                  elevation: 10.0,
                  child: new Row(
                    children: <Widget>[
                      new Image.asset("images/dep3.png",
                        height: 100.0,
                        width: 100.0,
                        fit: BoxFit.cover,),
                      new SizedBox(height:5.0,
                      ),
                      new Expanded(
                        child:Padding(
                          padding: EdgeInsets.only(left:10.0),
                          child:Text("Natural Resources",
                            style:TextStyle(
                                fontSize:20.0,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color:Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>student_detail())
                  );
                }
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: new GestureDetector(
                child: new Card(
                  elevation: 10.0,
                  child: new Row(
                    children: <Widget>[
                      new Image.asset("images/dep4.jpg",
                        height: 100.0,
                        width: 100.0,
                      ),
                      new Expanded(
                        child:Padding(
                          padding: EdgeInsets.only(left:10.0),
                          child:Text("Physical Sciences & Technology",
                            style:TextStyle(
                                fontSize:20.0,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color:Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>student_detail())
                  );
                }
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: new GestureDetector(
                child: new Card(
                  elevation: 10.0,
                  child: new Row(
                    children: <Widget>[
                      new Image.asset("images/dep5.png",
                        height: 100.0,
                        width: 100.0,
                        fit: BoxFit.cover,),
                      new SizedBox(height:5.0,
                      ),
                      new Expanded(
                        child:Padding(
                          padding: EdgeInsets.only(left:10.0),
                          child:Text("Sport Sciences & Physical Education",
                            style:TextStyle(
                                fontSize:20.0,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color:Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>student_detail())
                  );
                }
            ),
          ),

        ],

      ),
    );
  }
}