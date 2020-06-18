import 'package:flutter/material.dart';
import 'package:juliapp/custom/widgets/HorizontalList.dart';
import 'package:juliapp/custom/widgets/LogoAppBar.dart';
import 'package:juliapp/custom/widgets/VerticalList.dart';
import 'package:juliapp/custom/widgets/fundation/data.dart';

class Home extends StatelessWidget {
  final List<Map<String, Object>> objects = jsonData;
  final Map<String, Object> obj = jsonData[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: LogoAppBar(
          logoUrl: "assets/logo.png",
        ),
        body: Column(
          children: [
            Expanded( child: HorizontalList(),),
            Text(obj['title'],
                style: TextStyle(
                  color: Colors.deepPurple,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 24)),
           Expanded( child: VerticalList())
          ],
        )
    );
  }
}
