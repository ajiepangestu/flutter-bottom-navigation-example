import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/bottom_navigation_bar/bottom_navigation_bar_page.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class TitledBottomNavigationBarPage extends BottomNavigationBarPage {
  TitledBottomNavigationBarPage()
      : super(title: 'Titled Bottom Navigation', subtitle: 'Package: titled_navigation_bar: ^4.1.0');

  @override
  _TitledBottomNavigationBarState createState() => _TitledBottomNavigationBarState();
}

class _TitledBottomNavigationBarState extends State<TitledBottomNavigationBarPage> {
  int _seledtedIndex = 0;
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
      appBar: AppBar(title: Text(this.widget.title)),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _seledtedIndex = index;
          });
        },
        children: this.widget.content,
      ),
      bottomNavigationBar: TitledBottomNavigationBar(
        currentIndex: _seledtedIndex,
        onTap: (index) {
          setState(() {
            _seledtedIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: this.widget.navigationTitles.map((title) {
          int index = this.widget.navigationTitles.indexOf(title);
          return TitledNavigationBarItem(
            icon: this.widget.navigationIcons[index].icon,
            title: Text(title),
          );
        }).toList(),
      ),
    );
  }
}
