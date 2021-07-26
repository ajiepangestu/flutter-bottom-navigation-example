import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/bottom_navigation_bar/bottom_navigation_bar_page.dart';

class CurvedBottomNavigationBarPage extends BottomNavigationBarPage {
  CurvedBottomNavigationBarPage()
      : super(
            title: 'Curved Bottom Navigation Bar',
            subtitle: 'Package: curved_navigation_bar: ^1.0.1');

  @override
  _CurvedBottomNavigationBarState createState() =>
      _CurvedBottomNavigationBarState();
}

class _CurvedBottomNavigationBarState
    extends State<CurvedBottomNavigationBarPage> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.title),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: this.widget.content,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: [
          Icon(Icons.calendar_today),
          Icon(Icons.people),
          Icon(Icons.attach_money),
          Icon(Icons.note),
          Icon(Icons.settings)
        ],
      ),
    );
  }
}
