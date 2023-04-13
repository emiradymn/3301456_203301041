import 'package:flutter/material.dart';

class Idol4Page extends StatelessWidget {
  String idol14Title;

  Idol4Page(this.idol14Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF252424),
        appBar: AppBar(
          title: Text('RONNİE COLEMAN'),
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
                    'assets/images/body13.png',
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
                      '-BOY: 180 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-KİLO: 135 KG',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-YAĞ ORANI: %7',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-GÖGÜS: 147 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BİCEPS: 61 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BEL: 91.4 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-BACAK: 91 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-KALF: 56 CM',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      '-YAŞ: 34',
                      style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                    ),
                  ],
                )
              ]),
        )
    );
  }
}