import 'package:flutter/material.dart';
import 'package:juliapp/custom/widgets/HorizontalList.dart';
import 'package:juliapp/custom/widgets/LogoAppBar.dart';
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
            HorizontalList(),
            Text(obj['title'],
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500)),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text(obj['description'],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300)))
          ],
        ));
  }
}
