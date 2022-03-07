import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get dartTheme {
    Color customGrey = const Color.fromRGBO(50, 50, 50, 1);
    return ThemeData(
      primaryColor: customGrey,
      scaffoldBackgroundColor: customGrey,
      appBarTheme: AppBarTheme(
        backgroundColor: customGrey,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 28),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: customGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
      ),
      fontFamily: 'Product Sans',
    );
  }
}
