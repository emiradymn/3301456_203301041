import 'package:fitness_app/products/aksesuar10.dart';
import 'package:fitness_app/products/aksesuar2.dart';
import 'package:fitness_app/products/aksesuar3.dart';
import 'package:fitness_app/products/aksesuar4.dart';
import 'package:fitness_app/products/aksesuar5.dart';
import 'package:fitness_app/products/aksesuar6.dart';
import 'package:fitness_app/products/aksesuar7.dart';
import 'package:fitness_app/products/aksesuar8.dart';
import 'package:fitness_app/products/aksesuar9.dart';
import 'package:flutter/material.dart';
import '../components/bottomNavigation.dart';
import '../components/header.dart';
import '../products/aksesuar1.dart';

class AksesuarPage extends StatelessWidget {


  List<Map> products =[
    {"İsim" : "Spor Çantası", "foto": "assets/images/aksesuar1.jpeg", "fiyat": "250" },
    {"İsim" : "MuscleCloth Pro Bileklik", "foto": "assets/images/aksesuar2.jpeg", "fiyat": "100" },
    {"İsim" : "Harbinger Power Fitness Eldiven", "foto": "assets/images/aksesuar3.jpeg", "fiyat": "150" },
    {"İsim" : "Ağırlık Kemeri", "foto": "assets/images/aksesuar4.jpeg", "fiyat": "200" },
    {"İsim" : "Plates Topu", "foto": "assets/images/aksesuar5.jpeg", "fiyat": "150" },
    {"İsim" : "Harbinger Roller", "foto": "assets/images/aksesuar6.jpeg", "fiyat": "700" },
    {"İsim" : "Adidas Şort", "foto": "assets/images/aksesuar7.jpeg", "fiyat": "200" },
    {"İsim" : "KingSize Spor Atleti", "foto": "assets/images/aksesuar8.jpeg", "fiyat": "150" },
    {"İsim" : "Adidas El Yayı", "foto": "assets/images/aksesuar9.jpeg", "fiyat": "50" },
    {"İsim" : "Ölçek", "foto": "assets/images/aksesuar10.jpeg", "fiyat": "20" },

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
                          header("Aksesuarlar", context),
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
      if (title == "Spor Çantası") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Aksesuar1Page(title)));
      } else if (title == "MuscleCloth Pro Bileklik") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Aksesuar2Page(title)));
      } else if (title == "Harbinger Power Fitness Eldiven") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Aksesuar3Page(title)));
      } else if (title == "Ağırlık Kemeri") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Aksesuar4Page(title)));
      } else if (title == "Plates Topu") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Aksesuar5Page(title)));
      } else if (title == "Harbinger Roller") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Aksesuar6Page(title)));
      } else if (title == "Adidas Şort") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Aksesuar7Page(title)));
      } else if (title == "KingSize Spor Atleti") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Aksesuar8Page(title)));
      } else if (title == "Adidas El Yayı") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Aksesuar9Page(title)));
      } else if (title == "Ölçek") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Aksesuar10Page(title)));
      }else {
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

