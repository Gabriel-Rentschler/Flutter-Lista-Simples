import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gabriel_sit/src/app/modules/list_page.dart';
import 'package:gabriel_sit/src/theme/theme_constants.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: ListPage(),
    );
  }
}