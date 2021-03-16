import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  static String id = 'screen1';

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int page = 0;
  var duration = Duration(milliseconds: 500);
  Curve swipe = Curves.ease;
  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          SizedBox(
            height: 22.0,
          ),
          Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 22.0, right: 70.0, left: 70.0),
                child: Divider(
                  thickness: 2.0,
                  color: Colors.black54,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: CircleAvatar(
                        child: page > 0
                            ? Icon(
                                Icons.check_circle,
                                size: 30.0,
                              )
                            : null,
                        radius: 18.0,
                        backgroundColor: page == 0 || page > 0
                            ? Colors.black54
                            : Colors.white70,
                      ),
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: CircleAvatar(
                        child: page > 1
                            ? Icon(
                                Icons.check_circle,
                                size: 30.0,
                              )
                            : null,
                        radius: 18.0,
                        backgroundColor: page == 1 || page > 1
                            ? Colors.black54
                            : Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: CircleAvatar(
                        child: page > 2
                            ? Icon(
                                Icons.check_circle,
                                size: 30.0,
                              )
                            : null,
                        radius: 18.0,
                        backgroundColor: page == 2 || page > 2
                            ? Colors.black54
                            : Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: CircleAvatar(
                        child: page > 3
                            ? Icon(
                                Icons.check_circle,
                                size: 30.0,
                              )
                            : null,
                        radius: 18.0,
                        backgroundColor: page == 3 || page > 3
                            ? Colors.black54
                            : Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: CircleAvatar(
                        radius: 18.0,
                        backgroundColor: page == 4 || page > 4
                            ? Colors.black54
                            : Colors.white70,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              children: const <Widget>[
                Center(
                  child: Text(
                    'Page 1',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                Center(
                  child: Text(
                    'Page 2',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                Center(
                  child: Text(
                    'Page 3',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                Center(
                  child: Text(
                    'Page 4',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                Center(
                  child: Text(
                    'Page 5',
                    style: TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              child: Text("Next"),
              onPressed: () {
                setState(() {
                  if (page < 5) {
                    page++;
                  }
                  if (page == 5) {
                    controller.jumpToPage(0);
                    page = 0;
                  } else {
                    controller.nextPage(duration: duration, curve: swipe);
                  }
                });
              },
              color: Colors.black87,
            ),
          )
        ],
      ),
    );
  }
}
