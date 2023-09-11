import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/screens/mindReminder_screen.dart';
import 'package:medical_app/screens/messages_screens.dart';
import 'package:medical_app/screens/schedule_screen.dart';
import 'package:medical_app/screens/settings_screen.dart';
import '../screens/home_screen.dart';


class NavBarRoots extends StatefulWidget{
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex =0;
  final _screens=[
    //home screen
    HomeScreen(),
    //messages screen
    MessagesScreen(),
    //schedule screen
    ScheduleScreen(),
    // Reminder Screen
    MindReminderScreen(),
    //setting screen
    SettingsScreen(),
  ];

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,fontSize:15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index){setState(() {
            _selectedIndex=index;
          });
          },
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
            label: 'Ana Sayfa',
            )
          ,
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: 'Mesajlar',
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.calendar_badge_minus),
              label: 'Takvim',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.medical_information_rounded),
              label: 'İlaçlar',),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: 'Ayarlar',
            ),
          ],
        ),
      ),
    );
  }
}


