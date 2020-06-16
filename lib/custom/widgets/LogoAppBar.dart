import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget with PreferredSizeWidget {
  final String logoUrl;

  LogoAppBar({
    Key key,
    this.logoUrl = 'Default',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Center(
                child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Image.asset(
                      this.logoUrl,
                      fit: BoxFit.contain,
                      height: kToolbarHeight - 16.0,
                    ))));
  }

  @override
  Size get preferredSize => Size.fromHeight((kToolbarHeight));
}
