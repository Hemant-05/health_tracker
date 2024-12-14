import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_tracker/App/Features/Home/screens/home_screen.dart';
import 'package:health_tracker/App/Features/Messages/Screens/messages_screen.dart';
import 'package:health_tracker/App/Features/schedule_screen.dart';
import 'package:health_tracker/App/Utils/Constants/IconsStrings.dart';
import 'package:health_tracker/App/Features/Profile/screens/profile_screen.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({super.key});

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  PageController page_controller = PageController(initialPage: 0);
  int selected_tab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // physics: FixedExtentScrollPhysics(),
        controller: page_controller,
        onPageChanged: (value) {
          setState(() {
            selected_tab = value;
          });
        },
        children: const [
          HomeScreen(),
          MessagesScreen(),
          ScheduleScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected_tab,
          elevation: 50,
          selectedItemColor: Colors.black,
          onTap: (index){
            page_controller.jumpToPage(index);
            setState(() {
              selected_tab = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: SvgPicture.asset(IconsString.homeIcon,color: Colors.grey,),label: 'home',),
            BottomNavigationBarItem(icon: SvgPicture.asset(IconsString.messageIcon,color: Colors.grey,),label: 'messages'),
            BottomNavigationBarItem(icon: SvgPicture.asset(IconsString.calendarIcon,color: Colors.grey,),label: 'schedules'),
            BottomNavigationBarItem(icon: SvgPicture.asset(IconsString.userIcon,color: Colors.grey,),label: 'profile'),

          ]),
    );
  }
}
