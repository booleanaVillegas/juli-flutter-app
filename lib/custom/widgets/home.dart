import 'package:flutter/material.dart';
import 'package:juliapp/custom/widgets/HorizontalList.dart';
import 'package:juliapp/custom/widgets/LogoAppBar.dart';
import 'package:juliapp/custom/widgets/VerticalList.dart';
import 'package:juliapp/custom/widgets/fundation/data.dart';

class Home extends StatefulWidget{
  @override
  _Home createState()=> _Home();

}

class _Home extends State<Home> {
  List<Map<String, Object>> _horizontalList = jsonData;
  Map<String, Object> _selectedItem = jsonData[0];

  void _selectNewItem(Object item){
    setState(() {
      _selectedItem=item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: LogoAppBar(
          logoUrl: "assets/logo.png",
        ),
        body: Column(
          children: [
            Container(
              height: 280,
              child: HorizontalList(notifyParent: _selectNewItem,),),
            Text(_selectedItem['title'],
                style: TextStyle(
                  color: Colors.deepPurple,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 24)),
           Expanded( child: VerticalList(
             obj: _selectedItem
           ))
          ],
        )
    );
  }
}
