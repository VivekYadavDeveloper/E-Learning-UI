import 'package:assignment_viga/const.dart';
import 'package:assignment_viga/timeline_screen.dart';
import 'package:flutter/material.dart';

import 'channel_screen.dart';
import 'main.dart';
import 'vaulte_screen.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ChannelScreen(),
    TimelineScreen(),
    VaulteScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: buttonBgColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book_outlined,
              color: buttonBgColor,
            ),
            label: 'Channel',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.timeline_outlined,
              color: buttonBgColor,
            ),
            label: 'Timeline',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.password_sharp,
              color: buttonBgColor,
            ),
            label: 'Vaulte',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: iconColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
