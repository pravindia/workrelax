import 'package:flutter/material.dart';

class NameDetails extends StatelessWidget {
  final Widget child;

  NameDetails({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          image: new DecorationImage(
            image: AssetImage('images/bg_icons.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -80,
              left: 0,
              right: 0,
              child: Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: Color(0xFF4070D5),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: -60,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Color(0xFF3C7EEF),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: -40,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Color(0xFF46A8FF),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 20,
              child: Container(
                child: Image(
                  image: AssetImage('images/logoblue.png'),
                  height: 50,
                  width: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
