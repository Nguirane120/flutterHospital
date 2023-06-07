import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediacal_health/scrrens/home_screen.dart';
import 'package:mediacal_health/scrrens/message_screen.dart';
import 'package:mediacal_health/scrrens/schedul_screen.dart';
import 'package:mediacal_health/scrrens/settings_screen.dart';


class NavbarRoots extends StatefulWidget {
  const NavbarRoots({super.key});

  @override
  State<NavbarRoots> createState() => _NavbarRootsState();
}

class _NavbarRootsState extends State<NavbarRoots> {
  int currentScreen = 0;

    final _screens = [
      HomeScreen(),
      MessageScreen(),
      SchedulScreen(),
      SettingScreen(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[currentScreen],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
          currentIndex: currentScreen,
          onTap: (index){
            setState(() {
              currentScreen = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled,), label: "Home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_fill,), label: "Messages"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month,), label: "Schedule"),
            BottomNavigationBarItem(icon: Icon(Icons.settings,), label: "Settings"),
            // BottomNavigationBarItem(icon: Icon(Icons.home_filled,), label: "Home"),
          ]
        ),
      ),
    );
  }
}