import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';

class DoctorInfoScheduleRow extends StatelessWidget {
  const DoctorInfoScheduleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            color: MyColor.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.calendar_month,
                color: Colors.white,
              ),
              Text(
                MyText.schedule,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            radius: 14,
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
            radius: 14,
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
          onTap: () {},
          child: const CircleAvatar(
            radius: 14,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.star_outline,
              color: MyColor.primaryColor,
              size: 18,
            ),
          ),
        ),
        hSpace(5),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            radius: 14,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.favorite_outline,
              color: MyColor.primaryColor,
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}
