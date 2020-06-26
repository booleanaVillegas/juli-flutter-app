import 'package:flutter/material.dart';
import 'package:juliapp/custom/widgets/HorizontalListElement.dart';
import 'fundation/data.dart';

class HorizontalList extends StatelessWidget {
  final Function(Object) notifyParent;

  HorizontalList({Key key, @required this.notifyParent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (final item in jsonData)
               GestureDetector(
                 onTap: ()=>notifyParent(item),
                 child: HorizontalListElement(
                      title: item['title'],
                      pathImage: ("assets/" + item['photo']))
               )   ],
            );
  }
}
