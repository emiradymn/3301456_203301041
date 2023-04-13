import 'package:fitness_app/views/preworkout.dart';
import 'package:fitness_app/views/protein.dart';
import 'package:fitness_app/views/shaker.dart';
import 'package:fitness_app/views/vitamin.dart';
import 'package:flutter/material.dart';
import '../views/aksesuar.dart';
import '../views/gainer.dart';
import '../views/kreatin.dart';
import 'package:fitness_app/components/bottomNavigation.dart';

class CategoriesPage extends StatelessWidget {
  final List<String> categories = [
    'Protein Tozu',
    'Gainer',
    'Pre-workout',
    'Vitaminler',
    'Kreatin',
    'Shaker ve Kaplar',
    'Aksesuarlar',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252424),
      appBar: AppBar(
        backgroundColor: Color(0xFF3F0B0B),
        title: Text('Kategoriler', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,)

        ),
      ),

      body:
      ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final category = categories[index];
          Container(
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.only(bottom: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4, offset: Offset(0,4),)
              ],
            ),
            child: Text(
              "",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF)),
            ),
          );
          Stack(children: [
            bottomNavigationBar("search"),
          ],
          );
          return ListTile(
            title: Text(category, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Color(0xFFFFFFFF)),),
            onTap: (
                ) {
              if (category == 'Protein Tozu') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProteinPage(),
                  ),
                );
              } else if (category == 'Pre-workout') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreworkoutPage(),
                  ),
                );
              } else if (category == 'Gainer') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GainerPage(),
                    )
                );
              }else if (category == 'Vitaminler') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VitaminPage(),
                    )
                );
              }else if (category == 'Kreatin') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KreatinPage(),
                    )
                );
              }else if (category == 'Shaker ve Kaplar') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShakerPage(),
                    )
                );
              }else if (category == 'Aksesuarlar') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AksesuarPage(),
                    )
                );
              }
            },
          );
        },


      ),
    );
  }
}
