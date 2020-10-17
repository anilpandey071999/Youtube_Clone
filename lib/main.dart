import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube',
      theme: ThemeData(
        brightness:     Brightness.light,
        scaffoldBackgroundColor: Colors.white,
          accentColor: Colors.black87,
          textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black87),
          bodyText2: TextStyle(color: Colors.black87),
        )
      ),
      darkTheme: ThemeData(
        primaryColor: Color(0xFF121212),
        scaffoldBackgroundColor: Color(0xFF282828),
        accentColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: SplachScreen(),
    );
  }
}

class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Center(
        child: Container(
          height: 100.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/logo.png'),
              alignment: AlignmentDirectional.center,
              // fit: BoxFit.fitHeight
            ),
          ),
        ),
      ),
    );
  }
}
