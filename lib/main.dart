import 'package:flutter/material.dart';

import 'views/screens/flash_screen/flash_scareen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Flutter Demo',
      home: FleshScreen(),
    );
  }
}
