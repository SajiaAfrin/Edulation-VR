import 'package:flutter/material.dart';

class Subcategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'img/logo/relativity.png',
            image_caption: 'Physics',
          ),
          Category(
            image_location: 'img/logo/tools.png',
            image_caption: 'Math',
          ),
          Category(
            image_location: 'img/logo/flask.png',
            image_caption: 'Chemistry',
          ),
          Category(
            image_location: 'img/logo/dna.png',
            image_caption: 'Biology',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              )),
        ),
      ),
    );
  }
}
