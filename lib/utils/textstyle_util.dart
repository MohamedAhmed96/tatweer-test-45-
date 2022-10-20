import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TextstyleUtil {
  static TextStyle headline1TextstyleUtil(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 28.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        );
  }

  static TextStyle headline2TextstyleUtil(BuildContext context) {
    return Theme.of(context).textTheme.headline2!.copyWith(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        );
  }

  static TextStyle headline3TextstyleUtil(BuildContext context) {
    return Theme.of(context).textTheme.headline3!.copyWith(
          fontSize: 12.sp,
          color: Colors.black,
        );
  }

  static TextStyle headline4TextstyleUtil(BuildContext context) {
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.headline4!.copyWith(
            fontSize: 10.sp,
            color: Colors.black,
          ),
    );
  }
}
