import 'package:fitness_app/home/bazalcalorie.dart';
import 'package:fitness_app/home/categories.dart';
import 'package:fitness_app/components/bottomNavigation.dart';
import 'package:fitness_app/home/dailycalorie.dart';
import 'package:fitness_app/components/etiket.dart';
import 'package:fitness_app/idol/idol.dart';
import 'package:fitness_app/home/login.dart';
import 'package:fitness_app/tarifs/tarif.dart';
import 'package:flutter/material.dart';

class  HomePage extends StatefulWidget {


  @override
  State< HomePage> createState() => HomePageState();

}

class  HomePageState extends State< HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(

                children: [

                  //BAŞLIK
                  buildBaslik(),
                  //BANNER
                  buildBanner(),
                  //BUTONLAR
                  Padding(
                    padding: EdgeInsets.only(top: 48),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // İlk eleman
                        buildNavigation(text: "Kategoriler", icon: Icons.menu_sharp, widget: CategoriesPage(), context: context),
                        buildNavigation(text: "Favoriler", icon: Icons.star_border),
                        buildNavigation(text: "Egzersizler", icon: Icons.fitness_center),
                        buildNavigation(text: "Hesabım", icon: Icons.person, widget: const loginPage(), context: context ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40),
                  //
                  Text("KEŞFET", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24, color: Color(0xFF050505),
                  ),
                  ),
                  SizedBox(height: 16),


                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BazalCaloriePage(),
                            ),
                          );
                        },
                        child: Container(
                          color: Color(0xFFFFFFFF), // Renk burada ayarlanıyor
                          child: buildsalesItem(
                            text: "Bazal Metabolizmanı Öğren",
                            photour1: "assets/images/fit1.jpg",
                            discount: "Kendini Keşfet",
                            screenWidth: screenWidth,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DailyCaloriePage(),
                            ),
                          );
                        },
                        child: Container(
                          color: Color(0xFFFFFFFF), // Renk burada ayarlanıyor
                          child: buildsalesItem(
                            text: "Günlük Kalori Takipçisi",
                            photour1: "assets/images/fit2.jpg",
                            discount: "Programı Bozma",
                            screenWidth: screenWidth,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => IdolPage(),
                            ),
                          );
                        },
                        child: Container(
                          color: Color(0xFFFFFFFF),
                          child: buildsalesItem(
                            text: "İdolünü Seç",
                            photour1: "assets/images/fit3.jpg",
                            discount: "Sınırlarını Zorla",
                            screenWidth: screenWidth,
                          ),
                        ),
                      ),
                      SizedBox(width:  20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TarifPage(),
                            ),
                          );
                        },
                        child: Container(
                          color: Color(0xFFFFFFFF),
                          child: buildsalesItem(
                            text: "Fit Tarifler",
                            photour1: "assets/images/fit6.jpg",
                            discount: "Yeni Tatlar Öğren",
                            screenWidth: screenWidth,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 50),
                ],
              ),
            ),
            //BOTTOM NAVİGATİON BAR
            bottomNavigationBar("home"),
          ],
        ),
      ),
    );
  }


}




Widget buildBaslik(){
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Text(
      "Hard Gainz Club",
      style: TextStyle(
        fontFamily: "BlackOpsOne",
        fontSize: 34,
        color: Color(0xFF0A1034),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildBanner() {
  return Padding(
    padding: EdgeInsets.only(top: 24.0),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
      decoration: BoxDecoration(
          color: Color(0xFF642323), //0xFF0001FC (açık lacivert) 0xFF642323
          borderRadius: BorderRadius.circular(6)),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "DEĞİŞİMİ HİSSET !!!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600),

              ),
              SizedBox(height: 4),
              Text(
                "HardLine Whey Protein Tozu Stoklarımızda",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Image.asset("assets/images/protein2.1.png"),
        ],
      ),
    ),
  );
}
// type error: Cannot read properties of null(read 'name')
Widget buildNavigation({
  required String text,
  required IconData icon,
  Widget? widget ,
  BuildContext? context,

}) {
  return GestureDetector(
      onTap: () {
        if(context != null)
          if(widget != null)// sonradan eklendi
            Navigator.push( context, MaterialPageRoute(builder: (context)  {
              return widget;
            }
            )
            );
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF13110F)),
            child: Icon(
              icon,
              color: Color(0xFFFFFFFF),
              size: 18,
            ),
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
                color: Color(0xFF13110F),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),

        ],
      ));
}

Widget buildsalesItem({
  required String text,
  required String photour1,
  required String discount,
  required double screenWidth,
})
{


  return Container(
    width: (screenWidth - 60.0 )* 0.5 ,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    color: Color(0XFFFFFFF),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        etiket(discount),
        SizedBox(height: 22),
        Image.asset(photour1),
        SizedBox(height: 22),

        Center(
          child: Text(text,
            // textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Color(0xFF0A1034)),),
        )
      ],),
  );



}
