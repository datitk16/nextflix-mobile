import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/home.svg',
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/home.svg',
            color: kPrimaryColor,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/calendar.svg',
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/calendar.svg',
            color: kPrimaryColor,
          ),
          label: 'schedule',
        ),
        // hide middle button XD
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/calendar.svg',
              color: Colors.transparent),
          label: 'transparent',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/compass.svg',
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/compass.svg',
            color: kPrimaryColor,
          ),
          label: 'discover',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/profile_circle.svg',
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/profile_circle.svg',
            color: kPrimaryColor,
          ),
          label: 'profile',
        ),
      ],
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: kPrimaryColor,
      enableFeedback: false,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
