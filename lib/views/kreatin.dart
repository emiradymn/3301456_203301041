import 'package:fitness_app/products/kreatin1.dart';
import 'package:fitness_app/products/kreatin2.dart';
import 'package:fitness_app/products/kreatin3.dart';
import 'package:fitness_app/products/kreatin4.dart';
import 'package:fitness_app/products/kreatin5.dart';
import 'package:fitness_app/products/kreatin6.dart';
import 'package:flutter/material.dart';
import '../components/bottomNavigation.dart';
import '../components/header.dart';

class KreatinPage extends StatelessWidget {


  List<Map> products =[
    {"İsim" : "Kingsize Kreatin", "foto": "assets/images/kreatin1.jpeg", "fiyat": "850" },
    {"İsim" : "Reflex Creapure Kreatin", "foto": "assets/images/kreatin2.jpeg", "fiyat": "900" },
    {"İsim" : "Hardline Kreatin", "foto": "assets/images/kreatin3.jpeg", "fiyat": "500" },
    {"İsim" : "Supplementler.com Kreatin", "foto": "assets/images/kreatin4.jpeg", "fiyat": "470" },
    {"İsim" : "Big Joy Kreatin", "foto": "assets/images/kreatin5.jpeg", "fiyat": "450" },
    {"İsim" : "Big Joy Crea Big Kreatin", "foto": "assets/images/kreatin6.jpeg", "fiyat": "550" },

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
                          header("Kreatin", context),
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
      if (title == "Kingsize Kreatin") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Kreatin1Page(title)));
      } else if (title == "Reflex Creapure Kreatin") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Kreatin2Page(title)));
      } else if (title == "Hardline Kreatin") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Kreatin3Page(title)));
      } else if (title == "Supplementler.com Kreatin") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Kreatin4Page(title)));
      } else if (title == "Big Joy Kreatin") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Kreatin5Page(title)));
      } else if (title == "Big Joy Crea Big Kreatin") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Kreatin6Page(title)));
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

