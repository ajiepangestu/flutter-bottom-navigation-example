import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/bottom_navigation_bar/home_page.dart';

class BottomNavigationBarApp extends MaterialApp {
  BottomNavigationBarApp({Key? key})
      : super(
          key: key,
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
}
