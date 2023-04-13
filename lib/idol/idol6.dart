import 'package:flutter/material.dart';

class Idol6Page extends StatelessWidget {
  String idol6Title;

  Idol6Page(this.idol6Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF252424),
        appBar: AppBar(
          title: Text('ARNOLD SCHWARZENEGGER'),
          backgroundColor: Color(0xFF3F0B0B),
        ),
        body: Container(
          child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SizedBox(
                  width: 600,
                  height: 750,
                  child: Image.asset(
                    'assets/images/body15.jpg',
                    alignment: Alignment.centerLeft,
                    // fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'VÜCUT ÖLÇÜLERİ',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BOY: 187 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-KİLO: 106 KG',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-YAĞ ORANI: %7',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-GÖGÜS: 132 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BEL: 83 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BİCEPS: 55 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BACAK: 72 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-KALF: 51 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-YAŞ: 25',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                  ],
                )
              ]),
        )
    );
  }
}