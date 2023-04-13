import 'package:flutter/material.dart';

class Idol5Page extends StatelessWidget {
  String idol5Title;

  Idol5Page(this.idol5Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF252424),
        appBar: AppBar(
          title: Text('DAVİD LAİD'),
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
                    'assets/images/body14.jpg',
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
                      '-BOY: 188 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-KİLO: 90 KG',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-YAĞ ORANI: %8',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BİCEPS: 45',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-GÖGÜS: 120 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BEL: 79 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BACAK: 58 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-YAŞ: 28',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                  ],
                )
              ]),
        )
    );
  }
}