import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tarif5Page extends StatelessWidget {
  String tarif5Title;

  Tarif5Page(this.tarif5Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D6829),
        title: Text('Yüksek Proteinli Salata'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/yemek5.jpg',
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
                    'Yüksek Proteinli Salata',
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
                    '- 1/2 demet marul \n'
                        '- 3-4 dal taze soğan\n'
                        '- 1 avuç dereotu\n'
                        '- 4-5 adet cherry domates\n'
                        '- 1 adet salatalık\n'
                        '- 1 adet kapya biber\n'
                        '- 6 su bardağı su\n'
                        '- 2 adet ton balığı konservesi'
                        '- 1/2 limon suyu '
                        '- 2 yemek kaşığı elma sirkesi'
                        '- 4 yemek kaşığı zeytinyağı'
                        '- tuz, karabiber'
                        '- hardal',
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
                    '1. Sebzelerin hepsini iyice yıkayıp, kurulayın. Taze soğanı incecik halkalar halinde doğrayın.\n'
                        '2. Ardından marulları büyük parçalar halinde doğrayın. Dilerseniz bıçak değdirmeden, ellerinizde bölerek de parçalayabilirsiniz.\n'
                        '3. Dereotunu büyük parçalar halinde doğrayın.\n'
                        '4.Kapya biberi ince halkalar halinde doğrayın. Salatalığı verev şekilde ince dilimler halinde doğrayın. Çeri domatesleri 4 parçaya bölün.\n'
                        '5. Sosu için gereken tüm malzemeleri küçük bir kasede birleştirin. Bir çatal yardımıyla iyice çırparak karışmasını sağlayın.\n'
                        '6. Doğradığınız sebzelerin hepsini geniş bir karıştırma kabına alarak üzerine hazırladığınız sosu dökün. Tahta bir kaşıkla, sosun her yere dağılması için nazikçe karıştırın.\n'
                        '7.Bir kaseye aktardığınız salatanızın üzerine, yağını süzdüğünüz ton balığını parçalayarak yerleştirin. Sevdiklerinizle paylaşın. Afiyet olsun!\n'
                        '8. Suyu ekleyin ve karıştırın.\n'
                        '9. Tuz, karabiber, pul biberi ekleyin ve karıştırın.\n'
                        '10. Kaynamaya başlayınca altını kısın ve yaklaşık 25 dakika pişirin.\n'
                        '11. Blender veya çırpıcı ile çorbayı pürüzsüz hale getirin.\n'
                        '12. Servis yap.'
                        '2. Soğanı küçük küçük doğrayın.\n'
                        '3. Tereyağı ve sıvı yağı tencerede eritin.\n'
                        '4. Soğanı ekleyip kavurun.\n'
                        '5. Sarımsağı ezin ve tencereye ekleyin.\n'
                        '6. Unu ekleyip karıştırın.\n'
                        '7. Mercimeği ekleyin ve karıştırın.\n'
                        '8. Suyu ekleyin ve karıştırın.\n',
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