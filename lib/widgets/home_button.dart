import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../screens/homepage/attendance.dart';

class HomeBtn extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String engText;
  final String kanText;
  String pressBtn;

  HomeBtn({
    super.key,
    required this.bgColor,
    required this.textColor,
    required this.engText,
    required this.kanText,
    required this.pressBtn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32),
      child: ElevatedButton(
        onPressed: () {
          // Navigator.pushReplacementNamed(context, 'attendence');
          if (pressBtn == 'attendance') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Attendance()),
            );
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(bgColor),
          foregroundColor: MaterialStateProperty.all(textColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.all(20),
          ),
          minimumSize: MaterialStateProperty.all(const Size(400, 40)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Column(
          children: [
            Text(
              kanText,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              engText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
