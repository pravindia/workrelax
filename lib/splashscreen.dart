import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final Widget child;

  SplashScreen({Key key, this.child}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Image(
                  width: 200,
                  image: AssetImage('images/logoblue.png'),
                ),
              ),
              RaisedButton(
                color: Color(0xFF4280E1),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                onPressed: () {},
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
