import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/feature/doctors/widget/custom_app_bar.dart';
import 'package:medicalh_ealth/feature/home/widget/bottom_nav_bar.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: MyText.calendar),
      bottomNavigationBar: BottomNavBar(currentIndex: 3),
      body: Center(
        child: Text('Calendar Page'),
      ),
    );
  }
}