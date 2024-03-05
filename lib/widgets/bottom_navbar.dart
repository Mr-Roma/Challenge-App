import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:green_app/pages/history/history_page.dart';
import 'package:green_app/pages/home/home_page.dart';
import 'package:green_app/pages/product/product_page.dart';
import 'package:green_app/pages/profile/profile_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _pageIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    ProductPage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int selectedIndex) {
    setState(() {
      _pageIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex], // Display the current page based on _pageIndex
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade300,
        color: const Color.fromRGBO(98, 193, 114, 5),
        onTap: _onItemTapped,
        index: _pageIndex,
        items: const <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, color: Colors.white),
              Text('Home', style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_bag, color: Colors.white),
              Text('Product',
                  style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.history, color: Colors.white),
              Text('History',
                  style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, color: Colors.white),
              Text('Profile',
                  style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
