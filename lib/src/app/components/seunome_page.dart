import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gabriel_sit/src/utils/padding_sizes.dart';

class SeuNomePage extends StatelessWidget {
  final Widget body;
  final String pageTile;
  final String buttonText;
  final Function()? onPressed;

  SeuNomePage({required this.body, required this.pageTile, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTile),
      ),
      body: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: SingleChildScrollView(
            child: body,
          )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: onPressed,
        label: Text(buttonText)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat
    );
  }
}