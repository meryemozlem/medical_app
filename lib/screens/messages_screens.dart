
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class MessagesScreen extends StatelessWidget{



  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
    "doctor1.jpg",
    "doctor2.jpg",
  ];

  @override

  Widget build (BuildContext context){

    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(padding: EdgeInsets.symmetric(horizontal:20),
          child:Text("Mesajlar", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: 20),
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal : 15),
            decoration: BoxDecoration(color: Colors.white, 
            borderRadius: BorderRadius.circular(10),
              boxShadow:[
                BoxShadow(color: Colors.black12,
                blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
          ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 300,

                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
child: TextFormField(
  decoration: InputDecoration(
    hintText: "Ara",
    border: InputBorder.none,
  ),
),
                  ),
                ),
                Icon(Icons.search, color: Color(0xFF7165D6),),
              ],
            ),
            ),),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Çevrimiçi", style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold),),

          ),

          SizedBox(height: 11),
          SizedBox(height: 90,child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) {
            return Container(
margin: EdgeInsets.symmetric(horizontal: 12),
              width: 65,
              height: 65,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white, boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 10)],),

              child: Stack(
                textDirection: TextDirection.rtl,
                children: [
                  Center(child: Container(
                    height:65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child:Image.asset("assets/${imgs[index]}",
                        fit: BoxFit.cover,
                      ),

                    ),
                  ),),
                  Container(
                    margin: EdgeInsets.all(3),
                    padding: EdgeInsets.all(3),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child:Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,

                      ),
                    ),
                  ),
                ],
              ),
            );
          }),),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(bottom:1),
            child: Text("   Geçmiş Konuşmalar", style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold),),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                //minVerticalPadding: 15,
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => ChatScreen(),));
                },
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/${imgs[index]}"),
                ),

                title: Text("Dr. Deniz Arslan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text("Merhaba Doktor, müsait misiniz?",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14,color: Colors.black54),
                ),
                  trailing: Text("10:45", style: TextStyle(fontSize: 15, color: Colors.black54),),
              ),
            );
          },),
        ],),
    );
  }
}
