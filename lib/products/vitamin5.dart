import 'package:fitness_app/components/bottomNavigation.dart';
import 'package:fitness_app/components/etiket.dart';
import 'package:flutter/material.dart';
import '../components/header.dart';


class Vitamin5Page extends StatefulWidget {

  String vitamin5Title;

  Vitamin5Page(this.vitamin5Title);

  @override
  State<Vitamin5Page> createState() => _ProductDetailPageState();
}
class _ProductDetailPageState extends State<Vitamin5Page> {
  Color selectedColor =Color(0xFFB64D00);
  String selectedkilo = "SPREY";

  List<Color> colors = [
    Color(0xFFAD0A31),
    Color(0xFF6D4305),
    Color(0xFFBEB5A7),
    Color(0xFF33220A),

  ];
  List<String> kilolar =["SPREY","DAMLA"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //HEADER
                            header(widget.vitamin5Title, context),
                            SizedBox(height: 32),

                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                child: ListView(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    etiket("Yeni"),

                                    SizedBox(height: 25),
                                    //ÜRÜN FOTO
                                    Center(child: Image.asset(
                                        "assets/images/vitamin5.jpeg")),

                                    SizedBox(height: 30),

                                    //RENKLER YA DA AROMA
                                    Text("AROMA", style: TextStyle(

                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF0A1034)),

                                    ),
                                    SizedBox(height: 16),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: colors
                                            .map((Color color) =>
                                            colorOption(color: color,
                                                selected: selectedColor == color,
                                                onTap: () {
                                                  setState(() {
                                                    selectedColor = color;
                                                  });
                                                }
                                            )).toList()),


                                    //KİLO
                                    SizedBox(height: 32),

                                    Text("TÜRÜ", style: TextStyle(

                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF0A1034)),
                                    ),
                                    SizedBox(height: 16),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: kilolar.map((String number) => kiloOption(
                                        kilo: number,
                                        selected: selectedkilo == number,
                                        onTap: () {
                                          setState(() {
                                            selectedkilo = number;
                                          });
                                        },
                                      )).toList(),
                                    ),
                                    SizedBox(height: 60),
                                    // SEPETE EKLE BUTON
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.symmetric(vertical: 16),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Color(0xFFB64D00)),
                                      child: Text("Sepete Ekle",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),),
                                    )
                                  ],),
                              ),
                            )
                          ])),
                  bottomNavigationBar("search"),
                ])));
  }

  Widget colorOption(
      {required Color color, required bool selected, required void Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: selected ? Border.all(
                color: Color(0xFFB64D00), width: selected ? 3 : 0)
                : null),
        width: 23,
        height: 23,
      ),
    );
  }
}
Widget kiloOption({required String kilo, required bool selected, required void Function() onTap}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(right: 23),
      child: Text(
        "$kilo ",
        style: TextStyle(
            color:  Color(selected? 0xFF0A1034: 0xFFA7A9BE),
            fontSize: 16
        ),),
    ),
  );
}