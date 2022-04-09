import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:netflix_clone/constants.dart';
import 'package:netflix_clone/screens/home/home_screen.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset('assets/icons/movie.svg'),
        backgroundColor: kPrimaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
