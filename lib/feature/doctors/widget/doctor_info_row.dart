import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';

class DoctorInfoRow extends StatelessWidget {
  const DoctorInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 22,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 18,
                color: MyColor.primaryColor,
              ),
              Text(
                '5',
                style: TextStyle(
                  color: MyColor.primaryColor,
                ),
              ),
            ],
          ),
        ),
        hSpace(5),
        Container(
          width: 50,
          height: 22,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.comment_outlined,
                size: 18,
                color: MyColor.primaryColor,
              ),
              Text(
                '40',
                style: TextStyle(
                  color: MyColor.primaryColor,
                ),
              ),
            ],
          ),
        ),
        hSpace(10),
        Expanded(
          child: Container(
            height: 22,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.alarm,
                  size: 18,
                  color: MyColor.primaryColor,
                ),
                hSpace(5),
                const Text(
                  MyText.monSat,
                  style: TextStyle(color: MyColor.primaryColor),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
