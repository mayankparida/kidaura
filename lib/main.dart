import 'package:flutter/material.dart';
import 'package:kidaura_assessment/loading_screen.dart';
import 'home_screen.dart';
import 'screen1.dart';
import 'screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        Screen1.id: (context) => Screen1(),
        Screen2.id: (context) => Screen2(),
        LoadingScreen.id: (context) => LoadingScreen()
      },
    );
  }
}
