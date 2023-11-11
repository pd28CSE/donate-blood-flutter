import 'package:flutter/material.dart';

import '../find_doner_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedScreen = 0;
  final List<Widget> screens = [
    const FindDonerScreen(),
    const FindDonerScreen(),
    const FindDonerScreen(),
    const FindDonerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: screens[selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        selectedItemColor: theme.primaryColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedScreen,
        onTap: (value) {
          setState(() {
            selectedScreen = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_search_outlined),
            label: 'Find Doners',
            activeIcon: Icon(Icons.person_search_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Requests',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
            activeIcon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
