import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';
import 'package:medicalh_ealth/feature/doctors/doctor_info.dart';
import 'package:medicalh_ealth/feature/doctors/providers/favorites_provider.dart';
import 'package:provider/provider.dart';

class DoctorsSortRow extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String department;
  const DoctorsSortRow(
      {super.key,
      required this.doctorName,
      required this.specialty,
      required this.department});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoritesProvider>(
      builder: (context, favoritesProvider, child) {
        final isFavorite = favoritesProvider.isFavorite(doctorName);
        
        return Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DoctorInfo(
                      doctorName: doctorName,
                      specialty: specialty,
                      department: department,
                    );
                  },
                ));
              },
              child: Container(
                width: 50,
                height: 25,
                decoration: BoxDecoration(
                  color: MyColor.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    MyText.info,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            hSpace(5),
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                radius: 13,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.calendar_month,
                  color: MyColor.primaryColor,
                  size: 18,
                ),
              ),
            ),
            hSpace(5),
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                radius: 13,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.priority_high,
                  color: MyColor.primaryColor,
                  size: 18,
                ),
              ),
            ),
            hSpace(5),
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                radius: 13,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.question_mark,
                  color: MyColor.primaryColor,
                  size: 18,
                ),
              ),
            ),
            hSpace(5),
            InkWell(
              onTap: () {
                favoritesProvider.toggleFavorite(
                  doctorName,
                  department,
                  specialty,
                );
              },
              child: CircleAvatar(
                radius: 13,
                backgroundColor: Colors.white,
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_outline,
                  color: isFavorite ? Colors.red : MyColor.primaryColor,
                  size: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}