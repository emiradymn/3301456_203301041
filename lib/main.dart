import 'package:fitness_app/components/logo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  //get text => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Hard Gainz Club',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'BlackOpsOne',
        primarySwatch: Colors.red,
      ),
      home: LogoPage(),
    );
  }




}