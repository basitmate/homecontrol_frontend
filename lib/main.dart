import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:custom_switch/custom_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.orange,
          primaryColor: Colors.orange,
          accentColor: Colors.orange,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}

class loggedInHome extends StatefulWidget {
  @override
  _loggedInHomeState createState() => _loggedInHomeState();
}

class _loggedInHomeState extends State<loggedInHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(), // Maximize width and height
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => controlPage('Bedroom')),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1.5,
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset('assets/images/bedroom.png', width: 250),
                            SizedBox(height: 20),
                            Text("BEDROOM", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => controlPage('Livingroom')),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1.5,
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 28),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset('assets/images/livingroom.png', width: 250),
                            SizedBox(height: 20),
                            Text("LIVING ROOM", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => controlPage('Kitchen')),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1.5,
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset('assets/images/kitchen.png', width: 250),
                            SizedBox(height: 20),
                            Text("KITCHEN", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => controlPage('Familyroom')),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1.5,
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset('assets/images/familyroom.png', width: 250),
                            SizedBox(height: 20),
                            Text("FAMILY ROOM", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => controlPage('Washroom')),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1.5,
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset('assets/images/washroom.png', width: 200),
                            SizedBox(height: 20),
                            Text("WASHROOM", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => controlPage('Bathroom')),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1.5,
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset('assets/images/bathroom.png', width: 250),
                            SizedBox(height: 20),
                            Text("BATHROOM", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}

// Register user page
class _RegisterEmailSection extends StatefulWidget {
  final String title = 'Registration';
  @override
  State<StatefulWidget> createState() =>
      _RegisterEmailSectionState();
}

class _RegisterEmailSectionState extends State<_RegisterEmailSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _success;
  String _userEmail;

  void _register() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    final User user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    )
    ).user;

    if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user.email;
      });
    } else {
      setState(() {
        _success = true;
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText:
              'Password'),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _register();
                  }
                },
                child: const Text('Submit'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(_success == null
                  ? ''
                  : (_success
                  ? 'Successfully registered ' + _userEmail
                  : 'Registration failed')),
            )
          ],
        ),
      ),
    );
  }
}

// Main login page
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

var width = 350.0;
var height = 700.0;

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _success;
  String _userEmail;
  String loginResult  = "Wait";

  void _signInWithEmailAndPassword() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    try {
      final User user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      )).user;
      print("Okay");

      if (user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => loggedInHome()),
        );
        setState(() {
          _success = true;
          _userEmail = user.email;
        });
      }
    } on FirebaseAuthException catch (e) {
      print(e.code);
      _success = false;
      if (e.code == 'user-not-found') {
        setState(() {
          loginResult = 'No user found for that email.';
        });
      } else if (e.code == 'wrong-password') {
        setState(() {
          loginResult = 'Wrong password provided for that user.';
        });
      } else if (e.code == 'too-many-requests') {
        setState(() {
          _success = false;
          loginResult = 'Aye chill bruh. Too many requests.';
        });
      } else if (e.code == 'invalid-email') {
        setState(() {
          _success = false;
          loginResult = 'The email address is invalid.';
        });
      }
    }
  }

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
    return Form(
      key: _formKey,
      child: Container(
        width: width,
        height: height,
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: height * 0.5,
                    child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child:
                        Image.asset('assets/images/logo.png', width: 250)),
                    alignment: Alignment(0.0, 0.0),
                  ),
                ],
              ),
              Column(
                // THIS IS THE LOGIN AREA
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: TextFormField(
                          controller: _emailController,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter a valid email address.';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(color: Colors.orange),
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Email address'))),
                    Container(height: 10),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(color: Colors.orange),
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Password'))),
                    Container(height: 20),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05),
                        child: Text("Forgot Password?")),
                    ),
                    Center(
                      child: Text(
                        _success == null
                            ? ''
                            : (_success ? 'Successfully signed in ' + _userEmail : loginResult),
                        style: TextStyle(color: Colors.red),
                      )
                    ),
                  ]),
              Align(
                alignment: Alignment(0.0, 0.6),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.05),
                  child: Container(
                    width: width - 2 * width * 0.05,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        FlatButton(
                          minWidth: width * 0.5,
                          color: Colors.orange[900],
                          textColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 11.0, horizontal: width * 0.05),
                          splashColor: Colors.blue,
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              _signInWithEmailAndPassword();
                            }
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FlatButton(
                          minWidth: width * 0.5,
                          color: Colors.orange[900],
                          textColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 11.0, horizontal: width * 0.05),
                          splashColor: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => _RegisterEmailSection()),
                            );
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ],
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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

class controlPage extends StatefulWidget {
  final String usernameController;
  controlPage(this.usernameController, {Key key}): super(key: key);

  @override
  _controlPageState createState() => _controlPageState();
}

class _controlPageState extends State<controlPage> {
  final DBref = FirebaseDatabase.instance.reference();
  int ledStatus = 0;
  bool isLoading = false;
  String command = '';

  getLEDStatus() async {
    command = widget.usernameController == 'Bedroom' ? 'CEILING_LIGHTS' :
    widget.usernameController == 'Livingroom' ? 'LIVING_LIGHTS' :
    widget.usernameController == 'Kitchen' ? 'KITCHEN_ELECTRONICS' :
    widget.usernameController == 'Familyroom' ? 'MAINROOM_LIGHTS' :
    widget.usernameController == 'Washroom' ? 'WASH_POWER' : 'BATH_LIGHTS';
    print(command);

    await DBref.child(command).once().then((DataSnapshot snapshot) {
      ledStatus = snapshot.value;
      print(ledStatus);
    });

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    isLoading = true;
    getLEDStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.usernameController),
        ),
        body: Container(
          constraints: BoxConstraints.expand(), // Maximize width and height
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              new Text(command, style: new TextStyle(
                fontSize: 25.0,
              )),
              SizedBox(height: 20),
              isLoading
                  ? CircularProgressIndicator()
                  : CustomSwitch(
                  activeColor: Colors.orange,
                  value: (ledStatus == 0 ? false : true),
                  onChanged: (value) {
                    print("VALUE : $value");
                    buttonPressed(command);
                },
              ),
            ],
          ),
        )
    );
  }

  void buttonPressed(command) {
    ledStatus == 0
        ? DBref.child(command).set(1)
        : DBref.child(command).set(0);
    if (ledStatus == 0) {
      setState(() {
        ledStatus = 1;
      });
    } else {
      setState(() {
        ledStatus = 0;
      });
    }
  }
}