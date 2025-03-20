import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';
import 'package:medicalh_ealth/feature/doctors/widget/doctor_info_blue_container.dart';
import 'package:medicalh_ealth/feature/doctors/widget/doctor_info_row.dart';
import 'package:medicalh_ealth/feature/doctors/widget/doctor_info_schedule_row.dart';

class DoctorInfoContainer extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String department;
  const DoctorInfoContainer(
      {super.key,
      required this.doctorName,
      required this.specialty,
      required this.department});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      width: double.infinity,
      height: 340,
      decoration: BoxDecoration(
          color: MyColor.secondaryColor,
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 80,
              ),
              hSpace(15),
              const DoctorInfoBlueContainer(),
            ],
          ),
          vSpace(10),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${MyText.dr}$doctorName $department',
                  style: const TextStyle(
                      color: MyColor.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                Text(specialty)
              ],
            ),
          ),
          vSpace(10),
          const DoctorInfoRow(),
          vSpace(10),
          const DoctorInfoScheduleRow()
        ],
      ),
    );
  }
}