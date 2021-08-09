import 'package:carousel_pro/carousel_pro.dart';
import 'package:edulationvr/category.dart';
import 'package:edulationvr/courses.dart';
import 'package:edulationvr/home.dart';
import 'package:edulationvr/subjects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [
    Center(child: Text('Setting')),
    Center(child: Text('Setting')),
    Center(child: Text('Setting')),
    Center(child: Text('Account')),
  ];

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('img/Presentation1.jpg'),
          AssetImage('img/carousel-1.png'),
          AssetImage('img/carousel-2.png'),
          AssetImage('img/carousel-3.png'),
          AssetImage('img/carousel-4.png'),
        ],
        autoplay: false,
        //    animationCurve: Curves.fastOutSlowIn,
        //    animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              )),
            ),
            title: Text("Edulation VR"),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.subject), text: 'Services'),
                Tab(icon: Icon(Icons.person), text: 'Blog'),
                Tab(icon: Icon(Icons.home), text: 'Contact'),
                Tab(icon: Icon(Icons.app_registration), text: 'Register Now'),
              ],
            ),
            actions: <Widget>[
              new IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new Subjects()));
                  })
            ]),

        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text('Sajia'),
                accountEmail: Text('sajia@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: new BoxDecoration(color: Colors.purple),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home, color: Colors.purple),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person, color: Colors.purple),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Location'),
                  leading: Icon(Icons.my_location, color: Colors.purple),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: ListTile(
                  title: Text('Payment'),
                  leading: Icon(Icons.payment, color: Colors.purple),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Categories'),
                  leading: Icon(Icons.dashboard, color: Colors.purple),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite, color: Colors.purple),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.purple[300]),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.purple[300]),
                ),
              )
            ],
          ),
        ),

        body: Column(
          children: [
            tabs[_currentIndex],
            image_carousel,
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                'Subjects',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ),
            Subcategory(),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Text(
                'Course',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ),
            //grid view
            Flexible(child: Subjects()),
            //horizontal list view begins here
          ],
        ),

        //Bottom
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.purple),
                // ignore: deprecated_member_use
                title: Text('Home'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.purple),
                // ignore: deprecated_member_use
                title: Text('Search'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Colors.purple),
                // ignore: deprecated_member_use
                title: Text('Setting'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.purple),
                // ignore: deprecated_member_use
                title: Text('Account'),
                backgroundColor: Colors.white),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
