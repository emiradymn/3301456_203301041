import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tarif2Page extends StatelessWidget {
  String tarif2Title;

  Tarif2Page(this.tarif2Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D6829),
        title: Text('Yulaflı Pankek'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/yemek10.webp',
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
                    'Yulaflı Pankek',
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
                    '- 2 adet yumurta\n'
                        '- 1 adet muz\n'
                        '- 2 diş sarımsak\n'
                        '- 1 tatlı kaşığı hindistan cevizi yağı\n'
                        '- 80 gram yulaf\n'
                        '- 100 ml süt\n'
                        '- 2 çay kaşığı kabartma tozu\n'
                        '- 1 çay kaşığı vanilya\n'
                        '1 çay kaşığı tarçın',
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
                      '1. Tarifi hazırlamaya yumurtaları çırparak başlıyoruz. 2 adet yumurtayı derin bir kasede 2 dakika kadar çırpalım.\n'
                          '2. Ayrı bir yerde çatalla ezdiğimiz muz veya muz+şekeri yumurta kasesine ilave edelim. Tercihe bağlı esmer şeker de kullanabilirsiniz.\n'
                          '3. Rondomuza 80 gram ince öğütülmüş yulafımızı koyup un haline getirelim ve yukarıda hazırladığımız karışıma ilave edelim.\n'
                          '4. Diğer tüm kuru malzemeleri ve en son sütü ekleyelim. Sütü eklerken yavaş olmakta fayda var. Çok akışkan bir kıvam olmamalı.\n'
                          '5. Varsa pankek tavası kullanabilirsiniz. Yoksa geniş bir tavayı ocağınıza alın ve altını açıp ısıtın. Daha sonra zeytinyağı ile yağlayıp ısıyı düşürmelisiniz.\n'
                          '6. Karışımdan bir kepçe ya da dondurma kaşığı yardımı ile alıp tavaya koyun. Hamurunuzun üzerinde kabarcıklar gördükten biraz sonra ters çevirin. O tarafı da aynı şekilde pişirin. Afiyet olsun.\n'
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