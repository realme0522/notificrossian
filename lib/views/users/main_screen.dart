import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notificrossian/views/users/nav_screens/account_screen.dart';
import 'package:notificrossian/views/users/nav_screens/event_screen.dart';
import 'package:notificrossian/views/users/nav_screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    EventScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red.shade900,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 20,
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/calendar.svg',
              width: 20,
            ),
            label: 'EVENTS',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              width: 20,
            ),
            label: 'ACCOUNT',
          ),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
