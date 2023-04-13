import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tarif7Page extends StatelessWidget {
  String tarif7Title;

  Tarif7Page(this.tarif7Title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D6829),
        title: Text('Tavuk Pilav'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/yemek9.jpg',
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
                    'Tavuk Pilav',
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
                    '- 500 gram tavuk göğüs eti\n'
                        '- 2 su bardağı pirinç\n'
                        '- 1 çay bardağı şehriye\n'
                        '- 3 yemek kaşığı tereyağı\n'
                        '- 1 su bardağı tavuk suyu\n'
                        '- 2 su bardağı kaynamış su\n'
                        '- 1 tatlı kaşığı tuz\n'
                        '- 1/2 tatlı kaşığı karabiber',
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
                    '1. İlk olarak tavuklarımızı haşlamak için tencereye koyuyoruz ve üzerini bir parmak geçecek şekilde su ekleyerek kaynamaya bırakıyoruz.\n'
                        '2. Haşlanan tavuklarımızı soğuması için kenara alıyoruz.\n'
                        '3. Biraz soğuduğunda tavuklarımızı tiftikliyeceğiz.\n'
                        '4. Bu sırada pirinçlerimizi de ılık suya koyup nişastasının çıkmasını bekliyoruz.\n'
                        '5. Pilav tenceresine yağımızı ekleyip eridiğinde şehriyelerimizi kavuruyoruz.\n'
                        '6. Şehriyelerin rengi değişip, kokusu çıktığında pirinçlerimizi de ekliyoruz ve 5-10 dakika kadar daha kavuruyoruz.\n'
                        '7. Daha sonra pirinçimizin üzerine tiftiklediğimiz tavuğumuzu ekliyoruz.\n'
                        '8. 1 bardak tavuk suyu ve 2 bardak kaynamış suyunu da ekledikten sonra tuz ve karabiberi de ilave edip bir kere karıştırıyoruz ve kapağını kapatarak kısık ateşte pişmeye bırakıyoruz. Ben pilav pişirirken çok fazla karıştırmıyorum size de böyle tavsiye ederim.\n'
                        '9. Pilavımız suyunu çekip tane tane olduğunda altını kapatıp, kapağın üzerine demlenmesi için kağıt havlu koyuyoruz. Servis yaparken havluyu alarak afiyetle pilavımızı yiyoruz. Ellerinize sağlık.\n',
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