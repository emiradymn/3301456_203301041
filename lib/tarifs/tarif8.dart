import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tarif8Page extends StatelessWidget {
  String tarif8Title;

  Tarif8Page(this.tarif8Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D6829),
        title: Text('Soya Soslu Hindi ve Karnabahar Pilav'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/yemek7.jpg',
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
                    'Soya Soslu Hindi ve Karnabahar Pilav',
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
                    '- 250 gram karnabahar\n'
                        '- 2 yemek kaşığı bezelye\n'
                        '- 1 adet havuç (küp doğranmış)\n'
                        '- 2 yemek kaşığı zeytinyağı\n'
                        '- 2 dilim hindi fileto\n'
                        '- 2 yemek kaşığı soya sosu\n'
                        '- 1 yemek kaşığı susam\n'
                        '- Tuz, karabiber, pul biber',
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
                      '1. Karnabaharı mutfak robotunda incecik olacak şekilde çekin.\n'
                          '2. Bir tavada zeytinyağıyla birlikte havuçları soteleyin. Ardından bezelyeleri ilave edip 3-4 dakika daha soteleyin.\n'
                          '3. Tavaya karnabaharı ekleyip karıştırın. Kendi suyuyla yumuşayana dek pişirin. Tuzunu ilave edip karıştırın ve ocaktan alıp servis kasesine aktarın.\n'
                          '4. Hindi filetoları ısınmış olan tavada zeytinyağı ile birlikte pişirin.\n'
                          '5. Ocaktan almaya yakın soya sosunu ve susamını ilave edip 1 dakika daha pişirin ve ocaktan alıp karnabahar pilavın üzerine koyarak sıcak servis edin.\n'

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