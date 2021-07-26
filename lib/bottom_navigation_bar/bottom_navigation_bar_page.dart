import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/bottom_navigation_bar/content_page.dart';

abstract class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);

  final String title;
  final String subtitle;
  final List<Widget> content = const <Widget>[
    ContentPage(content: 'Schedule'),
    ContentPage(content: 'Contacts'),
    ContentPage(content: 'Bills'),
    ContentPage(content: 'Notes'),
    ContentPage(content: 'Settings')
  ];
  final navigationTitles = const [
    'Schedule',
    'Contacts',
    'Bills',
    'Notes',
    'Settings'
  ];
  final navigationIcons = const [
    Icon(Icons.calendar_today),
    Icon(Icons.people),
    Icon(Icons.attach_money),
    Icon(Icons.note),
    Icon(Icons.settings)
  ];
}
