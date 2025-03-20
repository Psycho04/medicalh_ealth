import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';
import 'package:medicalh_ealth/feature/doctors/widget/doctors_sort_row.dart';

class DoctorsSort extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String department;
  const DoctorsSort({
    super.key,
    required this.doctorName,
    required this.department,
    required this.specialty,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: MyColor.secondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 60,
          ),
          hSpace(10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${MyText.dr}$doctorName\n$department',
                style:
                    const TextStyle(color: MyColor.primaryColor, fontSize: 17),
              ),
              vSpace(5),
              Text(specialty),
              vSpace(15),
              DoctorsSortRow(
                  doctorName: doctorName,
                  specialty: specialty,
                  department: department)
            ],
          )
        ],
      ),
    );
  }
}
