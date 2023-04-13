import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tarif3Page extends StatelessWidget {
  String tarif3Title;

  Tarif3Page(this.tarif3Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D6829),
        title: Text('Şekersiz Brownie'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/yemek3.jpg',
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
                    'Şekersiz Brownie',
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
                    '- 15 adet hurma\n'
                        '- 1 adet soğan\n'
                        '- 1 adet avodakado \n'
                        '- 1 adet yumurta\n'
                        '- 1.5 çay bardağı süt\n'
                        '- 1 çay bardağı kakao\n'
                        '- 0 gram bitter çikolata\n'
                        '- 2 yemek kaşığı hindistan cevizi tozu'
                        '- 1 çay kaşığı kabartma tozu',
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
                    '1. Hurmaların çekirdeklerini çıkarıp sıcak suyun içerisinde bekletin. Ardından hurmaları içindeki su ile birlikte blenderdan geçirip püre haline getirin.\n'
                        '2. Ardından üzerine avokado, yumurta ve sütü ilave edip güzelce blenderdan geçirin. Bu karışımı bir kabın içerisine alın ve içine azar azar kakaoyu ilave edip spatula yardımıyla alttan üste doğru karıştırın.\n'
                        '3. Kek kıvamından biraz daha koyu kıvamlı bir harç edin. İnce ince kıydığınız bitter çikolatayı, Hindistan cevizi tozunu ve  kabartma tozu da ilave edip güzelce karıştırın.\n'
                        '4. Pişirme kağıdı serili küçük boy dikdörtgen bir kek kalıbına harcı aktarın. 170 derecede önceden ısıtılmış fırında 20-25 dakika kadar pişirin.\n'
                        '5. Çıkarıp oda sıcaklığında soğumaya bırakın. Soğuduktan sonra dilimleyerek servis edin.\n',
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