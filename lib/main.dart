import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_45/utils/textstyle_util.dart';
import 'package:test_45/view/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Color(0xFF1BC5BD),
          textTheme: TextTheme(
            headline1: TextstyleUtil.headline1TextstyleUtil(context),
            headline2: TextstyleUtil.headline2TextstyleUtil(context),
            headline3: TextstyleUtil.headline3TextstyleUtil(context),
            headline4: TextstyleUtil.headline4TextstyleUtil(context),
          ),
        ),
        home: const WelcomeScreen(),
      );
    });
  }
}
