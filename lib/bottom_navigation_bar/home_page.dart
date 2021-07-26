import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/bottom_navigation_bar/bottom_navigation_bar_page.dart';
import 'package:flutter_bottom_navigation/bottom_navigation_bar/bottom_navy_bar_page.dart';
import 'package:flutter_bottom_navigation/bottom_navigation_bar/curved_bottom_navigation_bar_page.dart';
import 'package:flutter_bottom_navigation/bottom_navigation_bar/default_bottom_navigation_bar_page.dart';
import 'package:flutter_bottom_navigation/bottom_navigation_bar/titled_bottom_navigation_bar_page.dart';

final List<BottomNavigationBarPage> _allPages = <BottomNavigationBarPage>[
  DefaultBottomNavigationBarPage(),
  TitledBottomNavigationBarPage(),
  CurvedBottomNavigationBarPage(),
  BottomNavyBarPage(),
];

class HomePage extends StatelessWidget {
  void _pushPage(BuildContext context, BottomNavigationBarPage page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Examples'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
        child: ListView.builder(
          itemCount: _allPages.length,
          itemBuilder: (_, int index) => Container(
            padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
            child: Card(
              child: ListTile(
                title: Text(_allPages[index].title),
                subtitle: Text(_allPages[index].subtitle),
                onTap: () => _pushPage(context, _allPages[index]),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
