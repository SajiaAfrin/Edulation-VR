import 'package:flutter/material.dart';
class Subjects extends StatefulWidget {
  @override
  _SubjectsState createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  var subject_list = [
    {
      "name": "Physics",
      "picture": "img/pic/physic.jpg",
    },
    {
      "name": "Math",
      "picture": "img/pic/math.jpg",
    },
    {
      "name": "Chemistry",
      "picture": "img/pic/chemistry.jpg",
    },
    {
      "name": "Biology",
      "picture": "img/pic/biology.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: subject_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_sub(
              sub_name: subject_list[index]['name'],
              sub_picture: subject_list[index]['picture'],
            ),
          );
        });
  }
}
class Single_sub extends StatelessWidget {
  final sub_name;
  final sub_picture;

  Single_sub({
    this.sub_name,
    this.sub_picture,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
                child: Image.asset(
                  sub_picture,
                  fit: BoxFit.cover,
                )),
          ),
        )
    );
  }
}
