import 'package:flutter/material.dart';
import './src/pages/cart_page.dart';
import './src/pages/home_page.dart';
import './src/color_palette.dart';

void main() {
  runApp(FurnitureStore());
}

class FurnitureStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/cart': (context) => CartPage(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Store',
        theme: ThemeData(
          primarySwatch: ColorPalette().color,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alata',
                color: Colors.black),
            headline2: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alata',
                color: Colors.white),
            headline3: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alata',
                color: Colors.black),
            headline4: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            headline5: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                fontFamily: 'Alata',
                color: Colors.black),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}


