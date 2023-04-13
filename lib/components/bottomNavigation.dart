import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottomNavigationBar(String page ){
  return  Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(boxShadow: [BoxShadow(
          offset: Offset(0, -3),
          color: Colors.black.withOpacity(0.25),
          blurRadius: 10)
      ],
        color: Color(0xFF000000),
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      // color: Color(0xFF000000),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Icon(Icons.home, size: 18, color: Color(0xFFFFFFFF),),
          buildNavIcon(iconData: Icons.home, active: page == "home"),
          buildNavIcon(iconData: Icons.search, active: page == "search"),
          buildNavIcon(iconData: Icons.shopping_cart, active: page == "cart"),
          buildNavIcon(iconData: Icons.person, active: page == "profile"),

        ],
      ),
    ),
  );
}

Widget buildNavIcon({required IconData iconData, required bool active}){
  return Icon(iconData,
      size: 20, color: Color(active? 0xFFFFFFFF : 0xFF642323));
}