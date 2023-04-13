import 'package:flutter/material.dart';

class DailyCaloriePage extends StatefulWidget {
  @override
  _DailyCaloriePageState createState() => _DailyCaloriePageState();
}

class _DailyCaloriePageState extends State<DailyCaloriePage> {
  final TextEditingController _kahvaltiController = TextEditingController();
  final TextEditingController _oglenController = TextEditingController();
  final TextEditingController _aksamController = TextEditingController();
  final TextEditingController _atistirmaController = TextEditingController();
  int _toplamCalories = 0;

  void _calculateTotalCalories() {
    setState(() {
      int kahvaltiCalories = int.tryParse(_kahvaltiController.text) ?? 0;
      int oglenCalories = int.tryParse(_oglenController.text) ?? 0;
      int aksamCalories = int.tryParse(_aksamController.text) ?? 0;
      int atistirmaCalories = int.tryParse(_atistirmaController.text) ?? 0;

      _toplamCalories = kahvaltiCalories + oglenCalories + aksamCalories + atistirmaCalories;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF373636),
      appBar: AppBar(
        backgroundColor: Color(0xFFB64D00),
        title: Text('Günlük Kalori Hesabı'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              cursorColor: Colors.white,
              style: TextStyle(color: Color(0xFFFFFFFF)),
              controller: _kahvaltiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Kahvaltı Kalori',
              ),
            ),
            TextField(
              cursorColor: Colors.white,
              style: TextStyle(color: Color(0xFFFFFFFF)),
              controller: _oglenController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Öğlen Yemeği Kalori',
              ),
            ),
            TextField(
              cursorColor: Colors.white,
              style: TextStyle(color: Color(0xFFFFFFFF)),
              controller: _aksamController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Akşam Yemeği Kalori',
              ),
            ),
            TextField(
              cursorColor: Colors.white,
              style: TextStyle(color: Color(0xFFFFFFFF)),
              controller: _atistirmaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Atıştırmalık Kalori',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange
              ),
              onPressed: _calculateTotalCalories,
              child: Text('Günlük Toplam Kalori'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Toplam Kalori: $_toplamCalories',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
