
import 'package:flutter/material.dart';
import 'package:mad/account_screen.dart';
import 'package:mad/class_screen.dart';
import 'package:mad/home_screen.dart';
import 'package:mad/news_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  int _currentIndexSelected = 0;
  List<Widget> screenList = [
    HomeScreen(),
    ClassScreen(),
    NewsScreen(),
    AccountScreen()
  ];
  
  @override
  Widget build(BuildContext context) {

      final bottomNavBarItems = [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.class_outlined), label: "Class"),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Account"),

      ];

      final bottonNavBar = BottomNavigationBar(
        items: bottomNavBarItems,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.blueGrey,
        onTap: (index){
          setState(() {
            _currentIndexSelected = index;
          });
        },
        currentIndex: _currentIndexSelected,
        );
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: screenList.elementAt(_currentIndexSelected),
      bottomNavigationBar: bottonNavBar,
    );
  }
}