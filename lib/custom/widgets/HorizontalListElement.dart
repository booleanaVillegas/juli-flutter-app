import 'package:flutter/material.dart';

class HorizontalListElement extends StatelessWidget {
  final String pathImage;
  final String title;

  HorizontalListElement({Key key, this.title, this.pathImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: 135,
        padding: EdgeInsets.all(10.0),
        child: Column(children: [
          Image.asset(
            this.pathImage,
            fit: BoxFit.cover,
            height: 180,
          ),
          Container(
              height: 50,
              child: Center(
                  heightFactor: 1,
                  child: Text(
                    this.title,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                    textAlign: TextAlign.center,
                  )))
        ]));
  }
}
