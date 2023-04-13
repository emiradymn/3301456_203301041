import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  late String username;
  late String password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF373636),
      appBar: AppBar(
        backgroundColor: Color(0xFF3F0B0B),
        title: const Text(
          "Hesabım",
          style: TextStyle(
            fontFamily: "CormorantGaramond",
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hard Gainz Cluba Hoşgeldiniz",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white ),  ),
              Image.asset(
                "assets/images/yuvarlaklogo.png", // replace this with your image path
                width: 150,
                height: 250,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorColor: Color(0xffe1b5b2),
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe1b5b2)),
                  ),
                  labelText: "Kullanıcı Adı",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: "CormorantGaramond",
                    fontSize: 18,
                  ),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Kullanıcı Adını Giriniz";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  username = value!;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorColor: Color(0xffe1b5b2),
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe1b5b2)),
                  ),
                  labelText: "Şifre",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: "CormorantGaramond",
                    fontSize: 18,
                  ),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Şifenizi Giriniz";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(child: Text("Üye Ol", style: TextStyle(color: Colors.black54),), onPressed: () {}),
                  MaterialButton(child: Text("Şifremi Unuttum",style: TextStyle(color: Colors.black54),), onPressed: () {}),
                ],
              ),
              _loginButton(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _loginButton() => ElevatedButton(
    child: Text("Giriş Yap"),
    style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey
    ),
    onPressed: (){
      if(_formKey.currentState!.validate()){
        _formKey.currentState!.save();
        if(username == "emir" && password == "adıyaman"){
          debugPrint("Giriş Başarılı");
        }else{
          showDialog(context: context, builder:(BuildContext context){
            return AlertDialog(
              title: Text(
                  "Hata"
              ),
              content: Text("Giriş Bilgileriniz Hatalı"),
              actions: [
                MaterialButton( child: Text("Geri Dön"),onPressed: () => Navigator.pop(context))
              ],
            );
          });
        }

      }
    },


  );
}