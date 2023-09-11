import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ayarlar" , style: TextStyle(fontSize: 18+12, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 25),
            ListTile(
              leading: CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/icon.png"),
            ),

              title: Text("User 1",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25,
              ),),
              subtitle: Text("Profil"),
            ),
            Divider(height: 50),
            ListTile(onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(CupertinoIcons.person , color: Colors.blue, size: 35),
              ),
              title: Text("Profil" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),

              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 15),

            ListTile(onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.notifications_none_outlined , color: Colors.deepPurple, size: 35),
              ),
              title: Text("Bildirimler" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 15),

            ListTile(onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.privacy_tip_outlined, color: Colors.indigo, size: 35),
              ),
              title: Text("Güvenlik" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),

              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 15),

            ListTile(onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  shape: BoxShape.circle,
                ),
                child: Icon(CupertinoIcons.settings , color: Colors.grey, size: 35),
              ),
              title: Text("Ayarlar" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),

            SizedBox(height: 15),
            ListTile(onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.info_outline_rounded , color: Colors.orange, size: 35),
              ),
              title: Text("Hakımızda" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),

              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),

            Divider(height: 30),
            ListTile(onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.logout , color: Colors.red, size: 35),
              ),
              title: Text("Çıkış Yap" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),

              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}