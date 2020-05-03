import 'package:flutter/material.dart';
import 'package:student_attendance/student_detail.dart';

class CourseCIS extends StatefulWidget{
  @override
  CourseDepState createState()=>new CourseDepState();
}
class CourseDepState extends State<CourseCIS> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:AppBar(
        title: Text('Admin Home'
        ),
      ),
     



    );
  }
}