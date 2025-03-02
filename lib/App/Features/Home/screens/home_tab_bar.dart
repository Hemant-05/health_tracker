import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_tracker/App/Features/Home/screens/home_screen.dart';
import 'package:health_tracker/App/Features/Messages/Screens/messages_screen.dart';
import 'package:health_tracker/App/Features/Appointment/screens/appointment_screen.dart';
import 'package:health_tracker/App/Utils/Constants/IconsStrings.dart';
import 'package:health_tracker/App/Features/Profile/screens/profile_screen.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({super.key});

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  late PageController _pageController;
  int _selectedTab = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedTab);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  BottomNavigationBarItem _buildBottomNavItem(
      String iconPath, String label, int index) {
    final bool isSelected = _selectedTab == index;
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        color: isSelected ? Colors.black : Colors.grey,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            _selectedTab = value;
          });
        },
        // physics:
        //     const NeverScrollableScrollPhysics(), // Disable swipe if unnecessary
        children: const [
          HomeScreen(),
          MessagesScreen(),
          AppointmentScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        elevation: 8,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          _buildBottomNavItem(IconsString.homeIcon, 'Home', 0),
          _buildBottomNavItem(IconsString.messageIcon, 'Messages', 1),
          _buildBottomNavItem(IconsString.calendarIcon, 'Schedules', 2),
          _buildBottomNavItem(IconsString.userIcon, 'Profile', 3),
        ],
      ),
    );
  }
}
