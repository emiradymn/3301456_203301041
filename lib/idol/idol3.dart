import 'package:flutter/material.dart';

class Idol3Page extends StatelessWidget {
  String idol3Title;

  Idol3Page(this.idol3Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF252424),
        appBar: AppBar(
          title: Text('MUHAMMED ALİ'),
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
                    'assets/images/body7.jpg',
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
                      '-BOY: 191 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-KİLO: 97 KG',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-YAĞ ORANI: %15',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-GÖGÜS: 106 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BİCEPS: 38 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BEL: 85 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BACAK: 63',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-YAŞ: 33',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                  ],
                )
              ]),
        )
    );
  }
}