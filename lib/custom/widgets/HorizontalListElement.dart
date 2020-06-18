import 'package:flutter/material.dart';

class HorizontalListElement extends StatelessWidget {
  final String pathImage;
  final String title;

  HorizontalListElement({Key key, this.title, this.pathImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
        width: 145,
        child: Column(children: [
          Image.asset(
            this.pathImage,
            fit: BoxFit.cover,
            height: 200,

          ),
          Expanded(child: Text(
                    this.title,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,

                    ),
                    textAlign: TextAlign.center,
                  ))
        ]));
  }
}
