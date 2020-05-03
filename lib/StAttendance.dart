import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:student_attendance/AddSt_Attendance.dart';


    class StAttendance extends StatefulWidget{
    @override
    StAttendance_State createState()=>new StAttendance_State();
    }
    class StAttendance_State extends State<StAttendance> {
      @override
      Widget build(BuildContext context) {
        // TODO: implement build
        return new Scaffold(
          floatingActionButton: new FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new AddSt_Attendance())
              );
            },

            child: Icon(Icons.add),
            backgroundColor: Colors.lightBlueAccent,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation
              .centerDocked,
          bottomNavigationBar: new BottomAppBar(
            elevation: 30.0,
            color: Colors.blue,
            child: ButtonBar(
              children: <Widget>[],
            ),
          ),
          appBar: AppBar(
            title: Text('Student Attendance'
            ),
          ),

        );
      }
    }