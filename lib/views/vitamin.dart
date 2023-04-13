import 'package:fitness_app/products/vitamin1.dart';
import 'package:fitness_app/products/vitamin2.dart';
import 'package:fitness_app/products/vitamin3.dart';
import 'package:fitness_app/products/vitamin4.dart';
import 'package:fitness_app/products/vitamin5.dart';
import 'package:fitness_app/products/vitamin6.dart';
import 'package:flutter/material.dart';
import '../components/bottomNavigation.dart';
import '../components/header.dart';

class VitaminPage extends StatelessWidget {


  List<Map> products =[
    {"İsim" : "Kingsize ZMA Complex Tablet", "foto": "assets/images/vitamin1.jpeg", "fiyat": "150" },
    {"İsim" : "Nature's Supreme Multivitamin Tablet", "foto": "assets/images/vitamin2.jpeg", "fiyat": "200" },
    {"İsim" : "Nature's Supreme Multi Kolajen Tablet", "foto": "assets/images/vitamin3.jpeg", "fiyat": "350" },
    {"İsim" : "HardLine Vitamin Mineral Tablet", "foto": "assets/images/vitamin4.jpeg", "fiyat": "150" },
    {"İsim" : "Nature's Supreme Vitamin", "foto": "assets/images/vitamin5.jpeg", "fiyat": "220" },
    {"İsim" : "One Up C Vitamin Tablet", "foto": "assets/images/vitamin6.jpeg", "fiyat": "130" },

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
                          header("Vitaminler", context),
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
      if (title == "Kingsize ZMA Complex Tablet") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Vitamin1Page(title)));
      } else if (title == "Nature's Supreme Multivitamin Tablet") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Vitamin2Page(title)));
      } else if (title == "Nature's Supreme Multi Kolajen Tablet") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Vitamin3Page(title)));
      } else if (title == "HardLine Vitamin Mineral Tablet") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Vitamin4Page(title)));
      } else if (title == "Nature's Supreme Vitamin") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Vitamin5Page(title)));
      } else if (title == "One Up C Vitamin Tablet") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Vitamin6Page(title)));
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

