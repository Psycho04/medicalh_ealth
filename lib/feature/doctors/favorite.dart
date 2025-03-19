import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';
import 'package:medicalh_ealth/feature/doctors/widget/custom_app_bar.dart';
import 'package:medicalh_ealth/feature/doctors/widget/custom_row.dart';
import 'package:medicalh_ealth/feature/doctors/widget/favorite_card.dart';
import 'package:medicalh_ealth/feature/doctors/widget/services_container.dart';
import 'package:medicalh_ealth/feature/home/widget/bottom_nav_bar.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool isDoctorsSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: MyText.favorite),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              const CustomRow(currentPage: MyText.favorite),
              vSpace(30),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isDoctorsSelected = true;
                        });
                      },
                      style: ButtonStyle(
                        padding: const WidgetStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 15),
                        ),
                        backgroundColor: WidgetStatePropertyAll(
                          isDoctorsSelected
                              ? MyColor.primaryColor
                              : MyColor.secondaryColor,
                        ),
                      ),
                      child: Text(
                        MyText.doctors,
                        style: TextStyle(
                          color: isDoctorsSelected
                              ? Colors.white
                              : MyColor.primaryColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  hSpace(10),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isDoctorsSelected = false;
                        });
                      },
                      style: ButtonStyle(
                          padding: const WidgetStatePropertyAll(
                              EdgeInsets.symmetric(vertical: 15)),
                          backgroundColor: WidgetStatePropertyAll(
                            !isDoctorsSelected
                                ? MyColor.primaryColor
                                : MyColor.secondaryColor,
                          )),
                      child: Text(
                        MyText.services,
                        style: TextStyle(
                            color: !isDoctorsSelected
                                ? Colors.white
                                : MyColor.primaryColor,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              vSpace(10),
              isDoctorsSelected
                  ? const Column(
                      children: [
                        FavoriteCard(
                          doctorName: MyText.oliviaTurner,
                          department: MyText.md,
                          specialty: MyText.dermatoEndocrinology,
                        ),
                        FavoriteCard(
                          doctorName: MyText.alexanderBennett,
                          department: MyText.phd,
                          specialty: MyText.dermatoGenetics,
                        ),
                        FavoriteCard(
                          doctorName: MyText.sophiaMartinez,
                          department: MyText.phd,
                          specialty: MyText.cosmeticBioengineering,
                        ),
                        FavoriteCard(
                          doctorName: MyText.michaelDavidson,
                          department: MyText.md,
                          specialty: MyText.solarDermatology,
                        ),
                      ],
                    )
                  : const Column(
                      children: [
                        ServicesContainer(
                          title: MyText.dermatoEndocrinology,
                        ),
                        ServicesContainer(
                          title: MyText.cosmeticBioengineering,
                        ),
                        ServicesContainer(
                          title: MyText.dermatoGenetics,
                        ),
                        ServicesContainer(
                          title: MyText.solarDermatology,
                        ),
                        ServicesContainer(
                          title: MyText.dermatoEndocrinology,
                        ),
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
