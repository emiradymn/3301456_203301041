import 'package:fitness_app/products/shaker1.dart';
import 'package:fitness_app/products/shaker2.dart';
import 'package:fitness_app/products/shaker3.dart';
import 'package:fitness_app/products/shaker4.dart';
import 'package:fitness_app/products/shaker5.dart';
import 'package:fitness_app/products/shaker6.dart';
import 'package:flutter/material.dart';
import '../components/bottomNavigation.dart';
import '../components/header.dart';

class ShakerPage extends StatelessWidget {


  List<Map> products =[
    {"İsim" : "HardLine Shaker", "foto": "assets/images/shaker1.jpeg", "fiyat": "90" },
    {"İsim" : "Trec Boogieman Shaker", "foto": "assets/images/shaker2.jpeg", "fiyat": "110" },
    {"İsim" : "KingSize Wather Tank", "foto": "assets/images/shaker3.jpeg", "fiyat": "300" },
    {"İsim" : "KingSize Shaker", "foto": "assets/images/shaker4.jpeg", "fiyat": "70" },
    {"İsim" : "Pillbox İlaç Kutusu", "foto": "assets/images/kap1.jpeg", "fiyat": "50" },
    {"İsim" : "Saklama Kabı", "foto": "assets/images/kap2.jpeg", "fiyat": "20" },

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
            child: Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          header("Shaker ve Kaplar", context),
                          SizedBox(height: 32),
                          //İÇERİKLER

                          // buildContent("kreatin1", "assets/images/kreatin1.jpeg", "100")

                          Expanded(
                            child: GridView.count(
                                crossAxisCount: 3,
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
      if (title == "HardLine Shaker") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Shaker1Page(title)));
      } else if (title == "Trec Boogieman Shaker") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Shaker2Page(title)));
      } else if (title == "KingSize Wather Tank") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Shaker3Page(title)));
      } else if (title == "KingSize Shaker") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Shaker4Page(title)));
      } else if (title == "Pillbox İlaç Kutusu") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Shaker5Page(title)));
      } else if (title == "Saklama Kabı") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Shaker6Page(title)));
      } else {
        return null; // veya farklı bir sayfa döndürmek istediğiniz başka bir şey
      }
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration:
      BoxDecoration(
        color: Colors.white, //ürün arka plan rengi
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
                  color: Color(0xFF0A1034),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Text("$price TL", style: TextStyle(
                color: Color(0xFF08641C),
                fontSize: 16,
                fontWeight: FontWeight.w500),
            ),
          ],)
      ],),
    ),
  );

}

