import 'package:flutter/material.dart';
import 'package:new_to_edit/views/styles/fonts_families.dart';
import 'services/provider_services.dart';
import 'views/screens/home_screen/home_screen.dart';
// import 'views/screens/sign_in/forgot_pass/forgot_pass.dart';
// import 'views/screens/sign_up/register_app/register_profile.dart';
// import 'views/screens/sign_up/verifivation_page/verifivation_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: kMuliFamily, visualDensity: VisualDensity.standard),
      // theme: ThemeData.dark().copyWith(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MultiProvider(providers: [
        ChangeNotifierProvider<Data>(create: (context) => Data()),
        ChangeNotifierProvider<SetMyname>(create: (context) => SetMyname()),
      ], child: MyHomePage()),
    );
  }
}
