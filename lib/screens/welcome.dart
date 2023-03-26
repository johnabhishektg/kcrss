import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../screens/main_menu.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: tdBGColor,
        elevation: 0,
        title: Center(
          //padding: EdgeInsets.only(left: 75),
          child: IconButton(
            icon: Image.asset('assets/images/logo.png'),
            iconSize: 80,
            onPressed: () {},
          ),
        ),
      ),
      body: _homePage(),
    );
  }
}

class _homePage extends StatelessWidget {
  const _homePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "ಕೃಷ್ಣ ಚೈತನ್ಯ ವಸತಿ ವಿಶೇಷ ಶಾಲೆ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              "Krishna Chaitanya Residential Special School",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              "ನಿರ್ವಹಣೆ ಅಪ್ಲಿಕೇಶನ್",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 2),
            child: Text(
              "The Management App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          // START BUTTON
          Container(
            padding: EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.all(40),
                  child: ButtonTheme(
                    minWidth: 200,
                    height: 200,
                    child: Column(children: [
                      FloatingActionButton.large(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainMenu()),
                          );
                        },
                        backgroundColor: primaryLime,
                        foregroundColor: tdBlack,
                        child: const Icon(Icons.arrow_forward),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
