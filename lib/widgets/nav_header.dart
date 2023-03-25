import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../constants/colors.dart';

Widget NavHeader(context) {
  return AppBar(
    backgroundColor: tdBGColor,
    toolbarHeight: 100,
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios),
      color: tdBlack,
    ),
    title: Container(
      padding: EdgeInsets.only(left: 75),
      child: IconButton(
        icon: Image.asset('assets/images/logo.png'),
        iconSize: 80,
        onPressed: () {},
      ),
    ),
  );
}
