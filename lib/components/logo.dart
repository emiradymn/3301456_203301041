import 'package:fitness_app/home/home.dart';
import 'package:flutter/material.dart';


class LogoPage extends StatefulWidget {
  @override
  State<LogoPage> createState() => _LogoPageState();
}
class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF373636),
        body: Center (
          child: Image.asset('images/yuvarlaklogo.png'),
        )

    );
  }
}