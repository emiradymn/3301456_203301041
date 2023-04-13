import 'package:fitness_app/products/preworkout1.dart';
import 'package:fitness_app/products/preworkout2.dart';
import 'package:fitness_app/products/preworkout3.dart';
import 'package:fitness_app/products/preworkout4.dart';
import 'package:fitness_app/products/preworkout5.dart';
import 'package:fitness_app/products/preworkout6.dart';
import 'package:flutter/material.dart';
import '../components/bottomNavigation.dart';
import '../components/header.dart';

class PreworkoutPage extends StatelessWidget {


  List<Map> products =[
    {"İsim" : "Kingsize Pre-Workout", "foto": "assets/images/preworkout1.jpeg", "fiyat": "850" },
    {"İsim" : "Big Joy Pre-Workout", "foto": "assets/images/preworkout2.jpeg", "fiyat": "900" },
    {"İsim" : "Weider Pre-Workout", "foto": "assets/images/preworkout3.jpeg", "fiyat": "500" },
    {"İsim" : "Trec Boogieman Pre-Workout", "foto": "assets/images/preworkout4.jpeg", "fiyat": "700" },
    {"İsim" : "KingSize Shot Pre-Workout", "foto": "assets/images/preworkout5.jpeg", "fiyat": "650" },
    {"İsim" : "Synergy Crush Pre-Workout", "foto": "assets/images/preworkout6.jpeg", "fiyat": "1000" },

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
                          header("Pre-Workout", context),
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
      if (title == "Kingsize Pre-Workout") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Preworkout1Page(title)));
      } else if (title == "Big Joy Pre-Workout") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Preworkout2Page(title)));
      } else if (title == "Weider Pre-Workout") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Preworkout3Page(title)));
      } else if (title == "Trec Boogieman Pre-Workout") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Preworkout4Page(title)));
      } else if (title == "KingSize Shot Pre-Workout") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Preworkout5Page(title)));
      } else if (title == "Synergy Crush Pre-Workout") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Preworkout6Page(title)));
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

