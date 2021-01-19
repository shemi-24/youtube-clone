import 'package:flutter/material.dart';

import 'appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget eachvideo(String asset, String title) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(asset),
            Positioned.fill(
              bottom: 10.0,
              right: 10.0,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "20:10",style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assests/dhoni.jpg'),
            ),
            title: Text(
              "$title",
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "Sports Media - 200 Views - 1 Hour",style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(Icons.more_vert, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 10.0,
          child: Container(
            color: Colors.black,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      bottomNavigationBar: bottomappbar,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            eachvideo(
                "assests/kohli.jpg", "Famous Sports Stars"),
            eachvideo(
                "assests/pogba.jpg", "Famous Sports Stars"),
            eachvideo(
                "assests/messi.jpg", "Famous Sports Stars"),
            eachvideo(
                "assests/neymar.jpg", "Famous Sports Stars"),
            eachvideo(
                "assests/mbappe.jpg", "Famous Sports Stars"),
          ],
        ),
      ),
    );
  }
}
