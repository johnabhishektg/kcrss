import 'package:flutter/material.dart';
import 'package:kcrss/widgets/home_button.dart';
import '../constants/colors.dart';
import '../widgets/nav_header.dart';
import '../widgets/title_header.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: NavHeader(context),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TitleHeader("ಮುಖಪುಟ"),
            Container(
              child: const Text(
                "HOME",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Column(
              children: [
                // ATTENDANCE
                HomeBtn(
                  bgColor: primaryLime,
                  textColor: tdBlack,
                  engText: 'Attendance',
                  kanText: 'ಹಾಜರಾತಿ',
                  pressBtn: 'attendance',
                ),

                // PROGRESS REPORT
                HomeBtn(
                  bgColor: red,
                  textColor: tdBlack,
                  engText: 'Progress Report',
                  kanText: 'ಪ್ರಗತಿ ಪತ್ರ',
                  pressBtn: 'progress',
                ),

                // GALLERY
                HomeBtn(
                  bgColor: violet,
                  textColor: tdBlack,
                  engText: 'Gallery',
                  kanText: 'ಗ್ಯಾಲರಿ',
                  pressBtn: 'gallery',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
