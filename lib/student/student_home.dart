import 'package:flutter/material.dart';
import 'package:flutter_application_1/student/student_dashboard.dart';
import 'package:flutter_application_1/student/student_feed.dart';
import 'package:flutter_application_1/student/student_popup.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    Feed(),
    PopUp(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: ('Feed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: ('Popup'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
