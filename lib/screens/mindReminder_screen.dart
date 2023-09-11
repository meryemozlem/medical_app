
import 'package:flutter/material.dart';
import 'package:medical_app/widgets/date_Picker.dart';

class MindReminderScreen extends StatefulWidget {
  @override
  State<MindReminderScreen> createState() => _MindReminderScreenState();
}

class _MindReminderScreenState extends State<MindReminderScreen> {
  int _gunlukDoz = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading : false,
        title: Text("İlaç Ekle", style: TextStyle(fontSize: 28, color: Colors.black87, fontWeight: FontWeight.w500),),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 5),
            Text("İlaç Adı", textAlign: TextAlign.start ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, color: Colors.black87),),
            TextField(
              decoration: InputDecoration(
              ),
              onChanged: (value) {
              },
            ),

            SizedBox(height: 30),
            Text("Günlük Doz (mg)", textAlign: TextAlign.start, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
              ),
              onChanged: (value) {
                try {
                  _gunlukDoz = int.parse(value);
                } catch (e) {
                  _gunlukDoz = 0;
                }
              },
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: 25),),
            Text( textAlign: TextAlign.end,
              "İlaç Türü", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23,color: Colors.black87),
              ),
            Row(
              children: [
                SizedBox(height: 155, width: 25),
                GestureDetector(
                  onTap: () {
                  },
                  child: Image.asset(
                    "assets/igne.png",
                    width: 90,
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 50),),
                GestureDetector(
                  onTap: () {
                  },
                  child: Image.asset(
                    "assets/tablet.png",
                    width: 64,
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 50),),
                GestureDetector(
                  onTap: () {
                  },
                  child: Image.asset(
                    "assets/kapsul.png",
                    width: 64,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
            IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 55,), ),
            SizedBox(height: 25),
            DatePicker(),



          ],
        ),
      ),
    );
  }
}

/*
class MindReminderScreen extends StatelessWidget {


@override

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top:  10 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "İlaç Hatırlatma",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40, width: 17),
          Container(
            child: DatePicker(
            ),
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 15),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueAccent.shade100,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: IconButton(
                  icon:
                      Icon(Icons.add),
                  color: Colors
                      .blue,
                  iconSize:
                      32, onPressed: () {  },
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
  }
*/

/*
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 70),
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 200),
                  child: Text(
                    " İlaç Adı: ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "     Günlük Doz Miktarı (mg): ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "      İlaç Türü: ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFF7165F5),
                  ),
                  child: SvgPicture.asset(
                    "assets/pill.svg",
                    height: 50,
                  ),
                ),
                SizedBox(width: 38),
              ],
            ),



            Row(
              //done
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFF7165F5),
                  ),
                  child: InkWell(

                  ),
                ),
                SizedBox(width: 38),
              ],
            ),*/

/*child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //1.
              SizedBox(height: 20, width: 100),
              Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: " İlaç Adı : ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              TextFormField(
                textCapitalization: TextCapitalization.words,
                maxLength: 20,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45, width: 7)),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                ),
                style: TextStyle(fontSize: 20, color: Color(0xFF7165D5)),
                cursorColor: Colors.deepPurple,
              ),

//2.
              SizedBox(height: 20, width: 100),
              Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: " Günlük Doz Miktarı (mg): ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              TextFormField(
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.number,
                maxLength: 20,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45, width: 7)),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                ),
                style: TextStyle(fontSize: 20, color: Color(0xFF7165D5)),
                cursorColor: Colors.deepPurple,
              ),

              //3.
              SizedBox(height: 30),
              Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: " İlaç Türü: ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                  Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF7165F5),
                    ),
                    child: SvgPicture.asset(
                      "assets/pill.svg",
                      height: 50,
                    ),
                  ),
                  SizedBox(width: 38),
                  //2.
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                  ),
                  Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF7165F5),
                    ),
                    child: SvgPicture.asset(
                      "assets/pill.svg",
                      height: 50,
                    ),
                  ),
                  //3.
                  SizedBox(width: 38),
                  Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF7165F5),
                    ),
                    child: SvgPicture.asset(
                      "assets/pill.svg",
                      height: 50,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Color(0xFF7165F5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                            "Kapsül",
                            style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                          )),
                    ),
                  ),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(0xFF7165F5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                              "Kapsül",
                              style:
                              TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                            )),
                      ),
                    ),

                    //3.

                  ],),
                ],
              ),
            ],
          ),
        ),
      )
      ,}*/
