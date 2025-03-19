import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';

class FavoriteCard extends StatelessWidget {
  final String doctorName;
  final String department;
  final String specialty;

  const FavoriteCard({
    super.key,
    required this.doctorName,
    required this.department,
    required this.specialty,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: MyColor.secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 50,
          ),
          hSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 12,
                    backgroundColor: MyColor.primaryColor,
                    child: Icon(
                      Icons.workspace_premium,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  hSpace(5),
                  const Text(
                    MyText.professionalDoctor,
                    style: TextStyle(color: MyColor.primaryColor),
                  ),
                ],
              ),
              vSpace(5),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${MyText.dr}$doctorName $department',
                          style: const TextStyle(
                              color: MyColor.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                        Text(
                          specialty,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.favorite,
                      color: MyColor.primaryColor,
                    )
                  ],
                ),
              ),
              vSpace(8),
              Container(
                height: 22,
                width: 250,
                decoration: BoxDecoration(
                    color: MyColor.primaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: const Text(
                  MyText.makeAppointment,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
