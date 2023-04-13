import 'package:flutter/material.dart';

class Idol2Page extends StatelessWidget {
  String idol2Title;

  Idol2Page(this.idol2Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF252424),
        appBar: AppBar(
          title: Text('JASON STATHAM'),
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
                    'assets/images/body9.jpg',
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
                      '-BOY: 178 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-KİLO: 84 KG',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-YAĞ ORANI: %10',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-OMUZ: 60 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-GÖGÜS: 117 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BEL: 87 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BİCEPS: 40 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-YAŞ: 52',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                  ],
                )
              ]),
        )
    );
  }
}