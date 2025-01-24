import 'package:aze/Details.dart';
import 'package:aze/Home.dart';
import 'package:aze/Profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  late final List<Widget> _pages; 

  int _index = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      Home(),
      Details(),
      Profile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home),
          Icon(Icons.details),
          Icon(Icons.person),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
