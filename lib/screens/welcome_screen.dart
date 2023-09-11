import 'package:flutter/material.dart';
import 'package:medical_app/screens/login_screen.dart';
import 'package:medical_app/widgets/navbar_roots.dart';
import 'package:medical_app/screens/signUpScreen.dart';
class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build (BuildContext context){
    return Material(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height:15),
            Align(alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => NavBarRoots(),
                ),);
              },
              child: Text("Atla",
              style: TextStyle(color: Color(0xFF7165D6), fontSize:20,
              ),
            ),
            ),),
            SizedBox(height: 50,),

            Padding( padding: EdgeInsets.all(20),child: ClipRRect(borderRadius: BorderRadius.circular(85),
              child: Image.asset("assets/doctors.jpg"),),
            ),

            SizedBox(height:50,),
            Text( "Hastane",
              style: TextStyle(color: Color(0xFF7165D6),
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
             SizedBox(height: 5),
            Text( "Randevu Sistemi",
                  style: TextStyle(color: Color(0xFF7165D6),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                ),
            SizedBox(height: 10,),
            Text( "Uzmandan Randevu Al",
              style: TextStyle(color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 40,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Color(0xFF7165D6),
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(
                     builder: (context) => LoginScreen(),
                     ));
                  },
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                  child: Text("Giriş", style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Material(
                color: Color(0xFF7165D6),
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => signUpScreen(),
                    ));
                  },
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                    child: Text("Kayıt ol", style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],),
          ],
        ),
      ),
    );
  }
}