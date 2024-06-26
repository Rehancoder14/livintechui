import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';
import 'package:livintecchui/explore_page.dart';
import 'package:livintecchui/kitty_page.dart';
import 'package:livintecchui/main_home_page.dart';
import 'package:livintecchui/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const MainHomePage(),
    const ExplorePage(),
    const KittyPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            isDark ? const Color.fromARGB(255, 27, 26, 26) : Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle:
            const TextStyle(color: isDark ? Colors.white : Colors.black),
        unselectedLabelStyle:
            const TextStyle(color: isDark ? Colors.white : Colors.grey),
        type: BottomNavigationBarType.fixed, // Ensures icons don't move
        elevation: 20,
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.home, 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.explore, 1),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.chat, 2),
            label: 'Kitty',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.games_outlined, 3),
            label: 'Games',
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData iconData, int index) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: isDark
            ? _currentIndex == index
                ? Colors.black
                : Colors.black
            : _currentIndex == index
                ? Colors.grey[300]
                : Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Icon(
        iconData,
        size: 40,
        color: isDark
            ? _currentIndex == index
                ? Colors.white
                : Colors.grey
            : _currentIndex == index
                ? Colors.black
                : Colors.grey,
      ),
    );
  }

  Widget _buildCard(
      {required IconData icon, required String title, required Color color}) {
    return Card(
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 120,
        width: 70,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(2, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: color,
              child: Icon(icon),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
