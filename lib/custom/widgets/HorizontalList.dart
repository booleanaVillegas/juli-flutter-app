import 'package:flutter/material.dart';
import 'package:juliapp/custom/widgets/HorizontalListElement.dart';
import 'fundation/data.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (final item in jsonData)
                  HorizontalListElement(
                      title: item['title'],
                      pathImage: ("assets/" + item['photo']))
              ],
            );
  }
}
