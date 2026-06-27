import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentUser = "Guest";

  final searchTextEditCtl = TextEditingController();

  void _onSearchHandle(String value){
      print("Search Input : $value");
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, $currentUser",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            "Here your activity class today.",
            style: TextStyle(fontSize: 12, color: Colors.blueGrey),
          ),
        ],
      ),
      centerTitle: false,
      backgroundColor: Colors.white,
    );

    final searchTextField = Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: TextField(
        controller: searchTextEditCtl,
        decoration: InputDecoration(
          hintText: "Search...",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          suffixIcon: Icon(Icons.search)
        ),
        onChanged: _onSearchHandle,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: ListView(children: [searchTextField]),
    );
  }
}
