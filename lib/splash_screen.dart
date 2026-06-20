import 'package:flutter/material.dart';
import 'package:mad/home_screen.dart';
import 'package:mad/main_screen.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    final name = Text("Phnom Penh University of Art", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),);

    final logo = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/ppua.png', width: 160,),
            name
          ],
        )
    );


    final getStartButton = Padding(padding: EdgeInsets.only(bottom: 16,), child: SizedBox(
      height: 50,
      width: 200,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue
          ),
          onPressed: (){
            final route = MaterialPageRoute(builder: (BuildContext context) => MainScreen());
            Navigator.pushReplacement(context, route);

          },
          child: Text("Get Start")),
    ),);


    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(child: logo,),
          getStartButton
        ],
      ),
    );
  }
}
