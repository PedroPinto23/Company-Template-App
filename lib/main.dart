import 'package:flutter/material.dart';

import 'src/HomeScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Enterprise App',
    home: HomeScreen(),
    theme: ThemeData(
      primaryIconTheme: IconThemeData(
        color: Colors.blue,
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}


