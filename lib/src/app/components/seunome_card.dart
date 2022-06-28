import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeuNomeCard extends StatelessWidget {
  final String? leftText;
  final String? rightText;

  SeuNomeCard({this.leftText, this.rightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.red, width: 2),
      ),
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Text(
            leftText!,
            style: TextStyle(fontSize: 20),
          ),
         const Spacer(),
          Text(
            rightText!,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}