import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/feature/home/home.dart';
import 'package:medicalh_ealth/feature/chat/chat.dart';
import 'package:medicalh_ealth/feature/profile/profile.dart';
import 'package:medicalh_ealth/feature/calendar/calendar.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;

  const BottomNavBar({super.key, this.currentIndex = 0});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int _selectedIndex;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the corresponding page
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Chat()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Calendar()),
        );
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.currentIndex;
  }

  @override
  void didUpdateWidget(BottomNavBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentIndex != widget.currentIndex) {
      setState(() {
        _selectedIndex = widget.currentIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            color: MyColor.primaryColor,
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildNavItem(Icons.home_outlined, 0),
            buildNavItem(Icons.chat_bubble_outline, 1),
            buildNavItem(Icons.person_outline, 2),
            buildNavItem(Icons.calendar_today_outlined, 3),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        color: _selectedIndex == index ? Colors.black : Colors.white,
        size: 28,
      ),
      onPressed: () => _onItemTapped(index),
    );
  }
}
