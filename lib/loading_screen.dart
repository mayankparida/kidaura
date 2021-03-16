import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:kidaura_assessment/screen2.dart';

class LoadingScreen extends StatefulWidget {
  static String id = 'loading_screen';
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  var countryData;
  getCountryData() async {
    http.Response response =
        await http.get("https://restcountries.eu/rest/v2/region/asia");
    if (response.statusCode == 200) {
      String data = response.body;
      var countryData = jsonDecode(data);
      print(countryData);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Screen2(countryData: countryData);
      }));
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCountryData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitHourGlass(
          color: Colors.purpleAccent,
          size: 100.0,
        ),
      ),
    );
  }
}
