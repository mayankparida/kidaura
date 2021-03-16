import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen2 extends StatefulWidget {
  Screen2({this.countryData});
  final countryData;
  static String id = 'screen2';

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    decodedData = widget.countryData;
  }

  var decodedData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: ListView.builder(
          itemCount: 45,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 140,
                            width: 125,
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: SvgPicture.network(
                                "${decodedData[index]["flag"]}",
                                fit: BoxFit.contain),
                          ),
                        ),
                        SizedBox(width: 22.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name: ${decodedData[index]["name"]}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Capital: ${decodedData[index]["capital"]}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Region: ${decodedData[index]["region"]}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Sub-Region: ${decodedData[index]["subregion"]}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Population: ${decodedData[index]["population"]}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )),
              )),
    );
  }
}
