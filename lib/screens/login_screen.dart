import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/screens/home_screen.dart';
import 'package:medical_app/screens/signUpScreen.dart';
import 'package:medical_app/service/auth.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  AuthService _authService = AuthService();

  bool passToggle = true;
  @override
  Widget build (BuildContext context){

    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding( padding: EdgeInsets.all(20),child: ClipRRect(borderRadius: BorderRadius.circular(85),
                child: Image.asset("assets/doctors.jpg"),),
              ),

              SizedBox(height: 20),
              Padding(padding: EdgeInsets.all(12),
                child: TextField(decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Adınızı giriniz"),
                  prefixIcon: Icon(Icons.person)
                ),),
              ),
              Padding(padding: EdgeInsets.all(12),
                child: TextField(
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Şifrenizi giriniz"),
                    prefixIcon: Icon(Icons.lock_rounded),
                    suffixIcon: InkWell(
                      onTap: () {
                        if(passToggle == true){
                          passToggle=false;
                        }
                        else{
                          passToggle=true;
                        }
                        setState(() {

                        });
                      } ,
                      child: passToggle ? Icon(CupertinoIcons.eye_slash_fill) : Icon(CupertinoIcons.eye_fill),
                    ),
                ),),
              ),
              SizedBox(height: 20),
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
                        _authService.signIn(_emailController.text, _passwordController.text, _userNameController.text).then((value) {
                          return Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        }
                        );
                      },
                      child: Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                        child: Center(child: Text("Giriş", style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),

                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height:14),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hesabınız yok mu?",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16, color: Colors.black54,),
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => signUpScreen(),
                   ));
                } , child: Text("Hesap oluştur", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF7165D5),),)),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}


