import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Courses(),
  ));
}
class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses"),
      ),
    );
  }
}
