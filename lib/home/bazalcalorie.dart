import 'package:flutter/material.dart';

class BazalCaloriePage extends StatefulWidget {
  @override
  _BazalCaloriePageState createState() => _BazalCaloriePageState();
}

class _BazalCaloriePageState extends State<BazalCaloriePage> {
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _kiloController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  int _cinsiyetValue = 0;
  double _caloriesNeeded = 0;

  String resultText = '';

  void _calculateCaloriesNeeded() {
    setState(() {
      int age = int.tryParse(_ageController.text) ?? 0;
      int kilo = int.tryParse(_kiloController.text) ?? 0;
      int height = int.tryParse(_heightController.text) ?? 0;
      double bmr = 0;
      if (_cinsiyetValue == 0) { // Erkek
        bmr = 88.36 + (13.4 * kilo) + (4.8 * height) - (5.7 * age);
      } else { // Kadın
        bmr = 447.6 + (9.2 * kilo) + (3.1 * height) - (4.3 * age);
      }
      _caloriesNeeded = bmr * 1.2;
      resultText =
      'Günlük kalori ihtiyacınız: ${_caloriesNeeded.toStringAsFixed(2)}';
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF373636),
      appBar: AppBar(
        backgroundColor: Color(0xFFB64D00),
        title: Text('Günlük Kalori Hesaplayıcı'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 0,
                    groupValue: _cinsiyetValue,
                    onChanged: (value) {
                      setState(() {
                        _cinsiyetValue = value!;
                      });
                    },
                  ),
                  Text(
                    'Erkek',
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                  ),
                  SizedBox(width: 16.0),
                  Radio(
                    value: 1,
                    groupValue: _cinsiyetValue,
                    onChanged: (value) {
                      setState(() {
                        _cinsiyetValue = value!;
                      });
                    },
                  ),
                  Text(
                    'Kadın',
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                  ),
                ],
              ),
              TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Color(0xFFFFFFFF)),
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Yaş',
                ),
              ),
              TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Color(0xFFFFFFFF)),
                controller: _kiloController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Kilo (kg)',
                ),
              ),
              TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Color(0xFFFFFFFF)),
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Boy (cm)',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                onPressed: _calculateCaloriesNeeded,
                child: Text('Günlük Kalori İhtiyacını Hesapla'),
              ),
              SizedBox(height: 16),
              Text(
                resultText,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
