import 'package:aze/screens/chat_screen/chat.dart';
import 'package:aze/screens/detail_cars/details.dart';
import 'package:aze/screens/home/home.dart';
import 'package:aze/screens/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List<Widget> _pages;

  int _currentIndex = 0;

  get googleSignIn => null;

  @override
  void initState() {
    _pages = [
      const HomeScreen(),
      const DetailCars(),
      ChatScreen(),
      ProfileScreen()
      
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home),
          Icon(Icons.details_rounded),
          Icon(Icons.chat),
          Icon(Icons.person)
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
