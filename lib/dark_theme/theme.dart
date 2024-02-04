import 'package:flutter/material.dart';

class AppThemes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: const Color(0xffFFFFFF),
    // spalash background-color
    scaffoldBackgroundColor: const Color(0xffFFFFFF),
    // full app background-color
    cardColor: const Color(0xffFFFFFF),
    // buttonColor: const Color(0xff1B1300),
    focusColor: const Color(0xffE9B337),
    hoverColor: const Color(0xffF7F5F1),
    splashColor: const Color(0xff302C22),
    // accentColor: const Color(0xffFFFFFF),
    shadowColor: const Color(0xffFDF9EF),
    canvasColor: const Color(0xffF0F3F5),
    bottomAppBarColor: const Color(0xffFFFFFF),
    hintColor: const Color(0xff848D9D),

    textTheme: const TextTheme(
      headline1: TextStyle(color: Color(0xff001815)), // messageBox
      headline2: TextStyle(color: Color(0xffE9B337)), // spalash screen text "m"
      headline3: TextStyle(color: Color(0xff000E08)), // normal black text
      headline4: TextStyle(color: Color(0xff1B1300)), //
      headline5: TextStyle(color: Color(0xffFFFFFF)),
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    backgroundColor: const Color(0xffE9B337),
    // spalash background-color
    scaffoldBackgroundColor: const Color(0xff121414),
    // full app background-color
    cardColor: const Color(0xff121414),
    // buttonColor: const Color(0xffE9B337),
    focusColor: const Color(0xff9E7414),
    hoverColor: const Color(0xff2D2921),
    splashColor: const Color(0xff2D2921),
    // accentColor: const Color(0xff1E1D1A),
    shadowColor: const Color(0xff2E291C),
    canvasColor: const Color(0xff1D2525),
    bottomAppBarColor: const Color(0xff2D2921),
    hintColor: const Color(0xffE9B337),

    textTheme: const TextTheme(
      headline1: TextStyle(color: Color(0xffFFFFFF)), // messageBox
      headline2: TextStyle(color: Color(0xffFFFFFF)), // spalash screen text "m"
      headline3: TextStyle(color: Color(0xffFFFFFF)), // normal black text
      headline4: TextStyle(color: Color(0xffE9B337)),
      headline5: TextStyle(color: Color(0xff1E1D1A)),
    ),
  );
}
