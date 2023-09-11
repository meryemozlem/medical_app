import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget{
  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  List imgs=[
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build (BuildContext context){
    return Scaffold(
      //error bottom overflowed by 30 pixels flut
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF7165D6),
      body: SingleChildScrollView(
        child: Column(children: [
SizedBox(height: 50),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Stack(
            children: [ Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 25,),
              ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.more_vert, color: Colors.white, size: 25,),
                ),
              ],),
              Padding(padding: EdgeInsets.symmetric(vertical: 11),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
CircleAvatar(
  radius: 33, backgroundImage: AssetImage("assets/doctor1.jpg"),
),
                  SizedBox(height: 10),
                  Text(" Dr. İsmail Aydoğan" , style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500, color: Colors.white,),),
                  SizedBox(height: 4),
                  Text("  Dahiliye Uzmanı", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 8),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF9F97E2),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.call, color: Colors.white,size:22,),
                    ),
                    SizedBox(width: 25),

                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF9F97E2),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(CupertinoIcons.chat_bubble_text_fill, color: Colors.white,size:22,),
                    ),
                  ],),
              ],),
              ),
            ],
          ),),
          SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: double.infinity,
            padding: EdgeInsets.only(top:20, bottom: 16),
            decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(11),)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("  Hekim Hakkında", style: TextStyle(color: Colors.black54,fontSize: 18, fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 5),
                Text("  Gülhane Askeri Tıp Akademisi Tıp Fakültesi 1996, \n  Askeri Hastane 2003-2018. \n  Hipertansiyon Kolesterol \n  Tiroid bezi hastalıkları \n  Mide bağırsak hastalıkları Kabızlık İshal Kansızlık" , style: TextStyle(fontSize: 16,color: Colors.black54),),
              SizedBox(height: 10),
                Row(children: [
                  Text("  Görüşler ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                SizedBox(height: 10),
                  
                  Icon(Icons.star, color: Colors.amber,),
                  Text("4.9", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  SizedBox(height: 5),

                  Text(" (124)", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16, color: Color(0xFF7165D6)),),
                  //ara parça sonraki widget'ı satırın sonuna hizalar, spacer aligns the next widget to the end of the line
                  Spacer(),
                  TextButton(onPressed: () {}, child: Text("Hepsini gör", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF7165D6)),)),
                ],),
                SizedBox(height: 155, child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2),],
            ),
            child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.4,
            child: Column(
              children: [
                ListTile(leading: CircleAvatar(radius: 20, backgroundImage: AssetImage("assets/${imgs[index+1]}"),
                ),
                  title: Text("Dr. Deniz", style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                    subtitle: Text("1 gün önce "),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.star, color: Colors.amber, ),
                    Text("4.9" , style: TextStyle(color: Colors.black54,),
                    ),
                    ],),
                ),
                SizedBox(height: 5),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  maxLines:5,
                  overflow:TextOverflow.ellipsis,
                  "Değerli Hekime çok teşekkür ederim. O muhteşem birisi. Çok ilgili ve daima güleryüzlü. " , style: TextStyle(
                  color: Colors.black,
                ),),
                ),
              ],
            ), )
           );

          }),),
                SizedBox(height: 10),
                Text("  Konum",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),
                ),
                ListTile(
                  leading:Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(color: Color(0xFFF0EEFA),shape: BoxShape.circle),
                    child:Icon(Icons.location_on, color: Color(0xFF7165D6), size: 30,
                    ),
                  ),
                  title: Text("Yeni Badem Tıp Merkezi" , style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Çankaya / ANKARA"),
                ),
              ],),
          ),
        ],),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 130,
        decoration: BoxDecoration(
          color:Colors.white70,


          boxShadow:[BoxShadow(color: Colors.black12,blurRadius: 4, spreadRadius: 2,)],
        ),
        child: Column(children: [
          Row(mainAxisAlignment:MainAxisAlignment.spaceBetween, children: [

            Text("Danışma Ücret" , style: TextStyle(color: Colors.black54,),
            ),
            Text("\₺100" , style: TextStyle(fontSize: 20,color: Colors.black54, fontWeight: FontWeight.bold),),

          ],),
          SizedBox(height: 15),

          InkWell( onTap: () {} , child: Container(width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(

              color: Color(0xFF7165D6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text("Randevuyu onayla",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white),),

            ),
          )),
        ],),
      ),
    );
  }
}