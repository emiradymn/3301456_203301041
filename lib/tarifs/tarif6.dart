import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tarif6Page extends StatelessWidget {
  String tarif6Title;

  Tarif6Page(this.tarif6Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D6829),
        title: Text('Poşe Somon'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/yemek6.webp',
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
                    'Poşe Somon',
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
                    '- 2 parça somon fileto\n'
                        '- 2 adet defne yaprağı\n'
                        '- 1 çay kaşığı toz kişniş\n'
                        '- 2 diş sarımsak\n'
                        '- 2 dal maydanoz sapı\n'
                        '- 1/2 çay kaşığı hardal tohumu\n'
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
                    '1. 2 adet, 3 parmak eninde somon fileto kestirin. Somonu genelde takoz olarak satmayı tercih ediyorlar ama rica ederseniz kuyruk kısmında fileto çıkartırlar.\n'
                        '2. Derince bir tencereye bolca su koyun ve kaynatın.\n'
                        '3. Filetoları, 2 ayrı parça, oldukça büyük streç filmin kendinize yakın kenarına doğru  yerleştirin.\n'
                        '4. Üzerine baharatları eşit miktarda paylaştırın ve her yerine bulaşmasını sağlayın. Sarımsağı orta kalınlıkta dilimlere bölün ve onları da somonların üzerine yerleştirin.\n'
                        '5. Üzerinde somon olan streç filmleri aynı börek sararmış gibi, ama çok sıkı bir şekilde sarın.\n'
                        '6. Sardıktan sonra sağında ve solunda kalan parçaya sıkı sıkı düğümler atın. Parlak kağıda sarılı şekerler gibi gözükmesi lazım.\n'
                        '7. Sıkı sıkı sardığınız somon filetoları kaynamakta olan suya atın. Filetoları atınca suyun sıcaklığı düşecektir. Tekrardan kaynamaya başlayınca, altını kısın ve fokurdamasın sadece tıkırdasın.\n'
                        '8. Tekrar kaynadıktan 10 dakika kadar sonra somonu kaynar sudan alın.\n'
                        '9. Streç filmin düğümlü yerinden makas yardımıyla kesin,ve somonu tabağa alın.\n'
                        '10.Eğer iyi saramadıysanız içine su alacaktır. O zaman önce mutlaka bir havlu kağıda çıkarın sonra servis tabağına alın.\n',
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