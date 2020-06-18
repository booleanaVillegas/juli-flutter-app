import 'package:flutter/material.dart';

class VerticalListElement extends StatelessWidget {
  final String pathImage;
  final String characterName;

  VerticalListElement({Key key, this.pathImage, this.characterName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
    child:Row(children: [
      Image.asset(
        this.pathImage,
        fit: BoxFit.cover,
        width: 180,
        height: 180,
      ),
      Expanded(
        child: Text(
          this.characterName,
          style: TextStyle(

            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,

        ),
      ),

    ]));
  }
}
