import 'package:flutter/material.dart';
import 'package:new_to_edit/views/styles/fonts_families.dart';
import 'views/screens/sign_up/register_app/register_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: kMuliFamily),
      // theme: ThemeData.dark(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ResisterAccount(),
    );
  }
}
