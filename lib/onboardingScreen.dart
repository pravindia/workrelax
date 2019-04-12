import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:workrelax/namesplash.dart';

class OnboardingScreen extends StatefulWidget {
  final Widget child;

  OnboardingScreen({Key key, this.child}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _slideIndex = 0;

  final List<String> image = [
    "images/p1.png",
    "images/p2.png",
    "images/p3.png",
  ];
  final List<List<String>> color = [
    [
      "0xFF4070D5",
      "0xFFFFFFFF",
      "0xFFFFFFFF",
    ],
    [
      "0xFFFFFFFF",
      "0xFF4070D5",
      "0xFFFFFFFF",
    ],
    [
      "0xFFFFFFFF",
      "0xFFFFFFFF",
      "0xFF4070D5",
    ]
  ];

  final List<String> text = [
    "Start your work with Workelax",
    "We take care of your Enjoyment through",
    "Why Wait ? Start Now! Redefine Your Work life!",
  ];
  final IndexController controller = IndexController();
  @override
  Widget build(BuildContext context) {
    TransformerPageView transformerPageView = TransformerPageView(
      pageSnapping: true,
      onPageChanged: (index) {
        setState(() {
          this._slideIndex = index;
        });
      },
      loop: false,
      controller: controller,
      transformer: new PageTransformerBuilder(
          builder: (Widget child, TransformInfo info) {
        return Container(
          color: Color(0xFFF7F9FC),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 50.0),
                child: Image.asset(
                  image[info.index],
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
                child: Text(
                  text[info.index],
                  style: TextStyle(
                      color: Color(0xFF4070D5),
                      fontSize: 16.0,
                      decoration: TextDecoration.none,
                      height: 1.4),
                  textAlign: TextAlign.center,
                ),
              ),
              ((info.index) == 2)
                  ? new RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NameDetails()));
                      },
                      color: Colors.blue,
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 15.0,
                          height: 15.0,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFF4070D5),
                                width: 2.0,
                                style: BorderStyle.solid,
                              )),
                        ),
                        Container(
                          width: 15.0,
                          height: 15.0,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xFF4070D5),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFF4070D5),
                                width: 2.0,
                                style: BorderStyle.solid,
                              )),
                        ),
                        Container(
                          width: 15.0,
                          height: 15.0,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFF4070D5),
                                width: 2.0,
                                style: BorderStyle.solid,
                              )),
                        ),
                      ],
                    )
            ],
          ),
        );
      }),
      itemCount: 3,
    );
    return Scaffold(
      body: transformerPageView,
    );
  }
}
