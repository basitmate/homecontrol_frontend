import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

var width = 350.0; // <-- play with these numbers
var height = 700.0; // <-- to see it on different sized devices

class _MyHomePageState extends State<MyHomePage> {
  bool trueFalse;
  initState() {
    trueFalse = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//  width = MediaQuery.of(context).size.width;  <-- this is where you would
//  height = MediaQuery.of(context).size.height; <-- get the real width/height
    print(trueFalse);
    return Center(
      child: Container(
        width: width,
        height: height,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(25.0),
              child: AppBar(backgroundColor: Colors.grey[850])),
          body: Stack(
            children: [
              Positioned(
                // THIS IS THE SETTINGS COG
                right: width * 0.02,
                top: height * 0.03,
                child: Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: width * 0.1,
                ),
              ),
              Positioned(
                // THIS IS THE CREST AND BACKGROUND
                  left: width * 0.05,
                  top: height * 0.05,
                  child: Container(
                    child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Image(
                            image: NetworkImage(
                                'http://highlandslatin.org/wp-content/uploads/2016/12/Monogram-white.png'))),
                    width: width * 0.20,
                    height: width * 0.20,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  )),
              Positioned(
                // THIS IS THE HIGHLANDS UPPER TEXT
                left: width * 0.05,
                top: height * 0.17,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Highlands Latin School",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                    Container(height: 8),
                    Text("Canvas Grades",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Column(
                // THIS IS THE LOGIN AREA
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email'))),
                    Container(height: 10),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password'))),
                    Container(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding:
                              EdgeInsets.fromLTRB(width * 0.01, 0, 0, 0),
                              child: Container(
                                child: Row(children: [
                                  Checkbox(
                                    value: trueFalse,
                                    onChanged: (bool value) {
                                      setState(() {
                                        trueFalse =
                                            value; // trueFalse?false:true;
                                      });
                                      print("check mark changed");
                                      print(value);
                                    },
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                      child: Text("Save Login?")),
                                ]),
                              )),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05),
                              child: Text("Forgot Password")),
                        ])
                  ]),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.05),
                  child: Container(
                    width: width - 2 * width * 0.05,
                    child: FlatButton(
                      color: Colors.grey[850],
                      textColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                          vertical: 11.0, horizontal: width * 0.05),
                      splashColor: Colors.blue,
                      onPressed: () {
                        print("button pressed");
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
