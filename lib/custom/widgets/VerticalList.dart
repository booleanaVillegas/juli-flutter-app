import 'package:juliapp/custom/widgets/VerticalListElement.dart';
import 'fundation/data.dart';
import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {


  final Map<String, Object> obj;

  VerticalList({Key key, this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(obj['description'],
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300)),
              ),
              for (final item in obj['characters'])
                VerticalListElement(
                    pathImage: ("assets/" + item['photo']),
                    characterName: item['name'])
            ],
          );
  }
}
