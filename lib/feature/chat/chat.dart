import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/feature/doctors/widget/custom_app_bar.dart';
import 'package:medicalh_ealth/feature/home/widget/bottom_nav_bar.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: MyText.chat),
      bottomNavigationBar: BottomNavBar(currentIndex: 1),
      body: Center(
        child: Text('Chat Page'),
      ),
    );
  }
}