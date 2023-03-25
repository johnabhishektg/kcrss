import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../constants/colors.dart';

Widget TitleHeader(String text) {
  return Container(
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

//"ಮುಖಪುಟ",