import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PPUA',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/ppua.png', width: 80,)
      ),
    );
  }



}