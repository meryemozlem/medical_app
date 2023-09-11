import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:medical_app/screens/login_screen.dart';
import 'package:medical_app/service/auth.dart';
class signUpScreen extends StatefulWidget{
  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  AuthService  _authService = AuthService() ;

  bool passToggle=true;
  @override
  Widget build (BuildContext context){
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height:10),

              Padding( padding: EdgeInsets.all(20),child: ClipRRect(borderRadius: BorderRadius.circular(85),
                child: Image.asset("assets/doctors.jpg"),),
              ),
              SizedBox(height: 5),
              Padding(padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                child: TextField(decoration: InputDecoration(labelText: "Adınız ve Soyadınız: ", border: OutlineInputBorder(), prefixIcon: Icon(Icons.person),),),
              ),

              Padding(padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                child: TextField(decoration: InputDecoration(labelText: "E Mail Adresiniz: ", border: OutlineInputBorder(), prefixIcon: Icon(Icons.email_rounded),),),
              ),

              Padding(padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                child: TextField(decoration: InputDecoration(labelText: "Telefon Numaranız: ", border: OutlineInputBorder(), prefixIcon: Icon(Icons.phone),),),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                child: TextField(
                  obscureText: passToggle? true : false,
                  decoration: InputDecoration(labelText: "Şifreniz: ", border: OutlineInputBorder(), prefixIcon: Icon(Icons.person),
                    suffixIcon: InkWell(onTap: () {
                      if (passToggle==true){
                        passToggle=false;
                      }
                      else {
                        passToggle=true;
                      }
                      setState(() {
                      },
                      );
                    },
                    child: passToggle? Icon(CupertinoIcons.eye_slash_fill) : Icon(CupertinoIcons.eye_fill),
                    ),
                    ),),
              ),
              SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(14),
                    child: InkWell(
                      onTap: () {
                        //firebase
                        _authService.signIn(_emailController.text, _passwordController.text, _userNameController.text,).then((value) {
                          return Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                        }
                        );
                      },
                      child: Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                        child: Center(child: Text("Hesap Oluştur", style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hesabınız var mı?",
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16, color: Colors.black54,),
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
                  } , child: Text("Giriş Yap", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF7165D5),),)),
                ],),
            ],
          ),
        ),
      ),
    );
  }
}


