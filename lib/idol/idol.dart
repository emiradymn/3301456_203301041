import 'package:fitness_app/idol/idol1.dart';
import 'package:fitness_app/idol/idol2.dart';
import 'package:fitness_app/idol/idol3.dart';
import 'package:fitness_app/idol/idol4.dart';
import 'package:fitness_app/idol/idol5.dart';
import 'package:fitness_app/idol/idol6.dart';
import 'package:flutter/material.dart';
import '../../components/bottomNavigation.dart';

class IdolPage extends StatelessWidget {


  List<Map> products =[
    {"İsim" : "CHRİS BUMSTEAD", "foto": "assets/images/body1.jpg", "fiyat": "2022 MR. OLYMPİA KLASİK FİZİK ŞAMPİYONU",},
    {"İsim" : "JASON STATHAM", "foto": "assets/images/body10.jpg", "fiyat": "BAŞARILI AKTÖR" },
    {"İsim" : "MUHAMMED ALİ", "foto": "assets/images/body11.jpg", "fiyat": "56 NAKAVT" },
    {"İsim" : "RONNİE COLEMAN", "foto": "assets/images/body6.jpg", "fiyat": "8 KEZ MR. OLYMPİA ŞAMPİYONU" },
    {"İsim" : "DAVİD LAİD", "foto": "assets/images/body8.jpg", "fiyat": "MUHTEŞEM ESTETİK" },
    {"İsim" : "ARNOLD SCHWARZENEGGER", "foto": "assets/images/body2.jpg", "fiyat": "GERÇEK BİR İDOL" },

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
                            title: Text("İDOLÜNÜ SEÇ"),
                            backgroundColor: Color(0xFF3F0B0B),
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
      if (title == "CHRİS BUMSTEAD") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Idol1Page(title)));
      } else if (title == "JASON STATHAM") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Idol2Page(title)));
      } else if (title == "MUHAMMED ALİ") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Idol3Page(title)));
      } else if (title == "RONNİE COLEMAN") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Idol4Page(title)));
      } else if (title == "DAVİD LAİD") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Idol5Page(title)));
      } else if (title == "ARNOLD SCHWARZENEGGER") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Idol6Page(title)));
      } else {
        return null;
      }
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration:
      BoxDecoration(
        color: Color(0xFF313030),
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: Offset(0, 16)),
        ],
      ),
      child: Column(children: [
        SizedBox(height: 14),
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

