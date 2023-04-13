import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tarif4Page extends StatelessWidget {
  String tarif4Title;

  Tarif4Page(this.tarif4Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D6829),
        title: Text('Muzlu Chia Puding'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/yemek4.webp',
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
                    'Muzlu Chia Puding',
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
                    '- 2 su bardağı badem sütü\n'
                        '- 6 yemek kaşığı chia tohumu\n'
                        '- 1 adet muz\n'
                        '- 1 çay kaşığı vanilya özü\n'
                        '- 1 yemek kaşığı bal\n'
                        '- yarım muz',
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
                      '1. Bir kabın içine sütü, chia tohumlarını ekleyin ve güzelce karıştırın.\n'
                          '2. Üzeri hava almayacak şekilde dolapta chia tohumları sütü çekip, jel kıvamı alana kadar en az yarım saat bekletin.\n'
                          '3. Kıvam alan pudingi çıkarıp içerisine bal ve vanilya özütü ilave ederek karıştırın.\n'
                          '4. Muzun kabuklarını soyup, iyice ezin ve pudingin içine ekleyin. İyice karıştırın, dilerseniz blendardan geçirin.\n'
                          '5. Servis kuplarınıza ya da kaselerinize hazırladığınız pudingleri eşit bir biçimde paylaştırın.\n'
                          '6. Üzerini muz dilimleri ile süsleyerek servis edebilirsiniz, afiyet olsun.\n'
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