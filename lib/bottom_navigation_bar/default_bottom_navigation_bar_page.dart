import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/bottom_navigation_bar/bottom_navigation_bar_page.dart';

class DefaultBottomNavigationBarPage extends BottomNavigationBarPage {
  const DefaultBottomNavigationBarPage({Key? key})
      : super(
            key: key,
            title: 'Default Bottom Navigation',
            subtitle: 'Package: - (Flutter Default)');

  _DefaultBottomNavigationBarState createState() =>
      _DefaultBottomNavigationBarState();
}

class _DefaultBottomNavigationBarState
    extends State<DefaultBottomNavigationBarPage> {
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Schedule",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Bills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Notes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
