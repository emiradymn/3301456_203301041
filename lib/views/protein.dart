import 'package:fitness_app/products/Protein2.dart';
import 'package:fitness_app/products/protein1.dart';
import 'package:fitness_app/products/protein3.dart';
import 'package:fitness_app/products/protein4.dart';
import 'package:fitness_app/products/protein5.dart';
import 'package:fitness_app/products/protein6.dart';
import 'package:flutter/material.dart';
import '../components/bottomNavigation.dart';
import '../components/header.dart';

class ProteinPage extends StatelessWidget {


  List<Map> products =[
    {"İsim" : "Muscletech Protein Tozu", "foto": "assets/images/protein1.jpeg", "fiyat": "1250" },
    {"İsim" : "HardLine Whey Protein Tozu", "foto": "assets/images/protein2.jpeg", "fiyat": "1800" },
    {"İsim" : "Big Joy Whey Protein Tozu", "foto": "assets/images/protein3.jpeg", "fiyat": "1500" },
    {"İsim" : "Saf Bitkisel Protein Tozu", "foto": "assets/images/protein4.jpeg", "fiyat": "550" },
    {"İsim" : "MultiPower Protein Tozu", "foto": "assets/images/protein5.jpeg", "fiyat": "700" },
    {"İsim" : "Olimp Pure Protein Tozu", "foto": "assets/images/protein6.jpeg", "fiyat": "600" },

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
                          header("Protein Tozu", context),
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
      if (title == "Muscletech Protein Tozu") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Protein1Page(title)));
      } else if (title == "HardLine Whey Protein Tozu") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Protein2Page(title)));
      } else if (title == "Big Joy Whey Protein Tozu") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Protein3Page(title)));
      } else if (title == "Saf Bitkisel Protein Tozu") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Protein4Page(title)));
      } else if (title == "MultiPower Protein Tozu") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Protein5Page(title)));
      } else if (title == "Olimp Pure Protein Tozu") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Protein6Page(title)));
      } else {
        return null;
      }
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration:
      BoxDecoration(
        color: Colors.white,
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

