import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tarif1Page extends StatelessWidget {
  String tarif1Title;

  Tarif1Page(this.tarif1Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D6829),
        title: Text('Kakaolu Yulaf'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/yemek1.jpg',
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Kakaolu Yulaf',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Malzemeler:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '- 5 yemek kaşığı yulaf\n'
                        '- 2 su bardağı süt\n'
                        '- 2 diş sarımsak\n'
                        '- 1.5 yemek kaşığı kakao\n'
                        '2 tatlı kaşığı bal',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Yapılışı:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Süt, yulaf ve kakaoyu ocağa alıp yulaflar yumuşayana kadar pişirelim.\n'
                        '2. Altını kapatıp içine bal ekleyelim.\n'
                        '3. Kaselere alıp üzerini süsleyelim. Afiyet olsun.\n',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}