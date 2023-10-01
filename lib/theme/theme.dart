import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
  appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF202020),
      elevation: 0.5,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
  dividerColor: Colors.white24,
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.amber,
  ),
  scaffoldBackgroundColor: const Color(0xFF202020),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: Color.fromARGB(255, 196, 196, 196),
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
  ),
);
