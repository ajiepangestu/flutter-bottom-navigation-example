import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/bottom_navigation_bar/bottom_navigation_bar_page.dart';

class BottomNavyBarPage extends BottomNavigationBarPage {
  BottomNavyBarPage()
      : super(
            title: 'Bottom Navy Bar',
            subtitle: 'Package: bottom_navy_bar: ^5.6.0');

  @override
  _BottomNavyBarState createState() => _BottomNavyBarState();
}

class _BottomNavyBarState extends State<BottomNavyBarPage> {
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
      body: Container(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: this.widget.content,
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
            title: Text('Schedule'),
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavyBarItem(
            title: Text('Contact'),
            icon: Icon(Icons.people),
          ),
          BottomNavyBarItem(
            title: Text('Bills'),
            icon: Icon(Icons.attach_money),
          ),
          BottomNavyBarItem(
            title: Text('Notes'),
            icon: Icon(Icons.note),
          ),
          BottomNavyBarItem(
            title: Text('Settings'),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
