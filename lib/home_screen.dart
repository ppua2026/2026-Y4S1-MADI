
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String currentUser = "Guest";
  int _currentIndexSelected = 0;
  List<Widget> screenList = [
    Text("Home"),
    Text("Class"),
    Text("News"),
    Text("Account")
  ];
  
  @override
  Widget build(BuildContext context) {

      final appBar = AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, $currentUser", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            Text("Here your activity class today.", style: TextStyle(fontSize: 12, color: Colors.blueGrey),)
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
      );
      
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}