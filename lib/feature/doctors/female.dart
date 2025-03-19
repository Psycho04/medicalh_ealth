import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';
import 'package:medicalh_ealth/feature/doctors/widget/custom_app_bar.dart';
import 'package:medicalh_ealth/feature/doctors/widget/custom_row.dart';
import 'package:medicalh_ealth/feature/doctors/widget/doctors_sort.dart';
import 'package:medicalh_ealth/feature/home/widget/bottom_nav_bar.dart';

class Female extends StatelessWidget {
  const Female({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: MyText.female),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              const CustomRow(currentPage: MyText.female),
              vSpace(20),
              const DoctorsSort(
                doctorName: MyText.oliviaTurner,
                department: MyText.md,
                specialty: MyText.dermatoEndocrinology,
              ),
              const DoctorsSort(
                doctorName: MyText.sophiaMartinez,
                department: MyText.phd,
                specialty: MyText.cosmeticBioengineering,
              ),
              const DoctorsSort(
                doctorName: MyText.oliviaTurner,
                department: MyText.md,
                specialty: MyText.dermatoEndocrinology,
              ),
              const DoctorsSort(
                doctorName: MyText.sophiaMartinez,
                department: MyText.phd,
                specialty: MyText.cosmeticBioengineering,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
