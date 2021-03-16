import 'package:flutter/material.dart';
import 'package:kidaura_assessment/loading_screen.dart';
import 'package:kidaura_assessment/screen1.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Center(child: Text("Kidaura Assessment")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Colors.black54,
                child: Text(
                  "Screen 1",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Screen1.id);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Colors.black87,
                child: Text(
                  "Screen 2",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, LoadingScreen.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
