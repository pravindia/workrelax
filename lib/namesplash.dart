import 'package:flutter/material.dart';

class NameDetails extends StatelessWidget {
  final Widget child;

  NameDetails({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
