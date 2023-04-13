import 'package:fitness_app/tarifs/tarif1.dart';
import 'package:fitness_app/tarifs/tarif2.dart';
import 'package:fitness_app/tarifs/tarif3.dart';
import 'package:fitness_app/tarifs/tarif4.dart';
import 'package:fitness_app/tarifs/tarif5.dart';
import 'package:fitness_app/tarifs/tarif6.dart';
import 'package:fitness_app/tarifs/tarif7.dart';
import 'package:fitness_app/tarifs/tarif8.dart';
import 'package:flutter/material.dart';
import '../../../components/bottomNavigation.dart';


class TarifPage extends StatelessWidget {


  List<Map> products =[
    {"İsim" : "Kakaolu Yulaf", "foto": "assets/images/yemek1.jpg", "fiyat": "KAHVALTI",},
    {"İsim" : "Yulaflı Pankek", "foto": "assets/images/yemek10.webp", "fiyat": "KAHVALTI" },
    {"İsim" : "Şekersiz Brownie", "foto": "assets/images/yemek3.jpg", "fiyat": "ATIŞTIRMALIK" },
    {"İsim" : "Muzlu Chia Puding", "foto": "assets/images/yemek4.webp", "fiyat": "ATIŞTIRMALIK" },
    {"İsim" : "Yüksek Proteinli Salata", "foto": "assets/images/yemek5.jpg", "fiyat": " ÖĞLEN YEMEĞİ" },
    {"İsim" : "Poşe Somon", "foto": "assets/images/yemek6.webp", "fiyat": "AKŞAM YEMEĞİ" },
    {"İsim" : "Tavuk Pilav", "foto": "assets/images/yemek9.jpg", "fiyat": "AKŞAM YEMEĞİ" },
    {"İsim" : "Soya Soslu Hindi ve Karnabahar Pilav", "foto": "assets/images/yemek7.jpg", "fiyat": "ÖĞLEN YEMEĞİ" },

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xFF252424),
        body: SafeArea(
            child: Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppBar(
                            title: Text("FİT TARİFLER"),
                            backgroundColor: Color(0xFF1D6829),
                          ),
                          SizedBox(height: 32),
                          //İÇERİKLER

                          // buildContent("kreatin1", "assets/images/kreatin1.jpeg", "100")

                          Expanded(
                            child: GridView.count(
                                crossAxisCount: 2,
                                mainAxisSpacing: 15,
                                crossAxisSpacing: 10,
                                children: products.where((product) => product != null).map((product) {

                                  return buildContent(
                                    product["İsim"] ?? "",
                                    product["foto"] ?? "",
                                    product["fiyat"] ?? "",
                                    context,
                                  );
                                }).toList()
                            ),
                          ),
                        ],)
                  ),
                  bottomNavigationBar("search"),
                ])
        )
    );

  }
}

Widget buildContent(String title, String photour1, String price, context) {
  return GestureDetector(
    onTap: () {
      if (title == "Kakaolu Yulaf") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Tarif1Page(title)));
      } else if (title == "Yulaflı Pankek") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Tarif2Page(title)));
      } else if (title == "Şekersiz Brownie") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Tarif3Page(title)));
      } else if (title == "Muzlu Chia Puding") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Tarif4Page(title)));
      } else if (title == "Yüksek Proteinli Salata") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Tarif5Page(title)));
      } else if (title == "Poşe Somon") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Tarif6Page(title)));
      } else if (title == "Tavuk Pilav") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Tarif7Page(title)));
      } else if (title == "Soya Soslu Hindi ve Karnabahar Pilav") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Tarif8Page(title)));
      }
      else {
        return null;
      }
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration:
      BoxDecoration(
        color: Color(0xFF313030), //ürün arka plan rengi
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: Offset(0, 16)),
        ],
      ),
      child: Column(children: [
        SizedBox(height: 16),
        Image.asset(photour1),
        SizedBox(height: 42),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Text("$price", style: TextStyle(
                color: Color(0xFF08641C),
                fontSize: 16,
                fontWeight: FontWeight.w500),
            ),
          ],)
      ],),
    ),
  );

}

