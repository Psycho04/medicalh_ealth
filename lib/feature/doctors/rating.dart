import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';
import 'package:medicalh_ealth/feature/doctors/widget/custom_app_bar.dart';
import 'package:medicalh_ealth/feature/doctors/widget/custom_row.dart';
import 'package:medicalh_ealth/feature/doctors/widget/rating_card.dart';
import 'package:medicalh_ealth/feature/home/widget/bottom_nav_bar.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: MyText.rating),
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            const CustomRow(currentPage: MyText.rating),
            vSpace(20),
            const RatingCard(
              doctorName: MyText.oliviaTurner,
              department: MyText.md,
              specialty: MyText.dermatoEndocrinology,
            ),
            const RatingCard(
              doctorName: MyText.alexanderBennett,
              department: MyText.phd,
              specialty: MyText.dermatoGenetics,
            ),
            const RatingCard(
              doctorName: MyText.sophiaMartinez,
              department: MyText.phd,
              specialty: MyText.cosmeticBioengineering,
            ),
            const RatingCard(
              doctorName: MyText.michaelDavidson,
              department: MyText.md,
              specialty: MyText.solarDermatology,
            ),
          ],
        ),
      ),
    );
  }
}
