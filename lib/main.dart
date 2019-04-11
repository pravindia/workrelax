// #46A8FF-Light
// #3C7EEF-Medium Light
// #4070D5-Dark  Color(0xFF4070D5)
// #3CCFA5-Green
import 'package:flutter/material.dart';
import 'package:workrelax/namesplash.dart';
import 'package:workrelax/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workrelax',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Workrelax'),
      routes: <String, WidgetBuilder>{
        '/s': (BuildContext context) => new SplashScreen(),
        '/name': (BuildContext context) => new NameDetails(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: AssetImage('images/bg_icons.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Image(
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage('images/welcomescreen_upcircle.png'),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Work',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Color(0xFF46A8FF),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Gym',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Color(0xFF3C7EEF),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Study',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Color(0xFF4070D5),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                // onVerticalDragStart: OnVerticalDragStart,
                onTap: () {
                  Navigator.of(context).pushNamed('/s');
                },
                child: Container(
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: Image(
                      alignment: AlignmentDirectional(0, 0),
                      width: 400.0,
                      // fit: BoxFit.fitWidth,
                      image: AssetImage('images/welcomescreen_upcircle.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void OnVerticalDragStart(DragStartDetails details) {
    setState(() {
      Navigator.of(context).pushNamed('/s');
    });
  }
}
