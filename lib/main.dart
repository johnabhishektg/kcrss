import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kcrss/screens/homepage/attendance.dart';
import 'package:kcrss/screens/main_menu.dart';
import '../screens/welcome.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white),
    );
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.merriweatherTextTheme(textTheme),
      ),
      title: 'KSRC',
      home: Welcome(),
    );
  }
}
