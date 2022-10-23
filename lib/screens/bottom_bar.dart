import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket/screens/home.dart';
import 'package:ticket/screens/profile.dart';
import 'package:ticket/screens/search.dart';
import 'package:ticket/screens/ticket.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Ticket(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), label: "Home", activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), label: "Search", activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), label: "Ticket", activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), label: "Profile", activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),
        ],
      ),
    );
  }
}
