import 'package:dribble_login/Login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  // //Keep orientation portait
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
  //   runApp(MyApp());
  // });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
