import 'package:flutter/material.dart';
import 'package:super_counter/screens/home.dart';
import 'package:super_counter/screens/login.dart';
import 'package:super_counter/theme_colors.dart';

class AppNavigator extends StatefulWidget {
  @override
  _AppNavigatorState createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: ThemeColors.rojmel_blue,
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: ThemeColors.rojmel_blue,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: ThemeColors.rojmel_blue,
            ),
          ),
          labelStyle: TextStyle(
            color: ThemeColors.rojmel_blue,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: ThemeColors.rojmel_blue,
            onPrimary: Colors.white,
            padding: EdgeInsets.all(18.0),
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )
          )
        ),
      ),
      home: Login(),
    );
  }
}
