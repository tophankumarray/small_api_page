import 'package:flutter/material.dart';
import 'package:flutter_application_3/CustomShift/profilepage.dart';
import 'package:flutter_application_3/DesignPage/stackpage.dart';
import 'package:flutter_application_3/SliddingSheet/sliddingpage.dart';
import 'package:flutter_application_3/bottomsheetpage.dart';
import 'package:flutter_application_3/stepper/anotherstepper.dart';
import 'package:flutter_application_3/homepage.dart';
import 'package:flutter_application_3/stepper/stepperpage.dart';
import 'stepper/enhancestepper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home:  HomePage(),
    );
  }
}
