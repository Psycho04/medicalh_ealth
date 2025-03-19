import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';
import 'package:medicalh_ealth/feature/doctors/widget/custom_app_bar.dart';
import 'package:medicalh_ealth/feature/doctors/widget/custom_row.dart';
import 'package:medicalh_ealth/feature/doctors/widget/doctors_sort.dart';
import 'package:medicalh_ealth/feature/home/widget/bottom_nav_bar.dart';

class Male extends StatelessWidget {
  const Male({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: MyText.male),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              const CustomRow(currentPage: MyText.male),
              vSpace(20),
              const DoctorsSort(
                doctorName: MyText.alexanderBennett,
                department: MyText.phd,
                specialty: MyText.dermatoGenetics,
              ),
              const DoctorsSort(
                doctorName: MyText.michaelDavidson,
                department: MyText.md,
                specialty: MyText.solarDermatology,
              ),
              const DoctorsSort(
                doctorName: MyText.alexanderBennett,
                department: MyText.phd,
                specialty: MyText.dermatoGenetics,
              ),
              const DoctorsSort(
                doctorName: MyText.michaelDavidson,
                department: MyText.md,
                specialty: MyText.solarDermatology,
              ),
            ],
          ),
        ),
      ),
    );
  }
}