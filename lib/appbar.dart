import 'package:flutter/material.dart';

AppBar topbar = AppBar(
  backgroundColor: Colors.white,
  title: Image.asset(
    'assests/assests_yticon.png',
    fit: BoxFit.cover,
    width: 100.0,
  ),
  actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(
        Icons.videocam,
        color: Colors.black,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(
        Icons.search,
        color: Colors.black,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assests/dhoni.jpg'),
      ),
    ),
  ],
);

//Color normalcolor = Colors.white24;
//Color selectedcolor = Colors.white;

BottomAppBar bottomappbar = BottomAppBar(
  color: Colors.white,
  child: Container(
    color: Colors.white,
    height: 55.0,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.home,
              color: Colors.red,
            ),
            Text(
              "Home",
              style: TextStyle(color: Colors.red,fontSize: 10),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.trending_up_rounded,
              color: Colors.black,
            ),
            Text(
              "Trending",
              style: TextStyle(color: Colors.black,fontSize: 10),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.subscriptions,
              color: Colors.black,
            ),
            Text(
              "Subscriptions",
              style: TextStyle(color: Colors.black,fontSize: 10),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            Text(
              "Notifications",
              style: TextStyle(color: Colors.black,fontSize: 10),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.folder,
              color: Colors.black,
            ),
            Text(
              "Library",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ],
    ),
  ),
);
