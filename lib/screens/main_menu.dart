import 'package:flutter/material.dart';
import '../screens/attandance.dart';
import '../constants/colors.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: tdBGColor,
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
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(top: 5),
              child: const Text(
                "ಮುಖಪುಟ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
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
                Container(
                  padding: EdgeInsets.only(top: 32),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Attendance()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(red),
                      foregroundColor: MaterialStateProperty.all(tdBlack),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(20),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(400, 40)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "ಹಾಜರಾತಿ",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          "Attendance",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // PROGRESS REPORT

                Container(
                  padding: EdgeInsets.only(top: 32),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(primaryLime),
                      foregroundColor: MaterialStateProperty.all(tdBlack),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(20),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(400, 40)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "ಪ್ರಗತಿ ಪತ್ರ",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          "Progress Report",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // GALLERY

                Container(
                  padding: EdgeInsets.only(top: 32),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(violet),
                      foregroundColor: MaterialStateProperty.all(tdBlack),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(20),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(400, 40)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "ಗ್ಯಾಲರಿ",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          "Gallery",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
