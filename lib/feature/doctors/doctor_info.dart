import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_styles.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';
import 'package:medicalh_ealth/feature/doctors/widget/custom_app_bar.dart';
import 'package:medicalh_ealth/feature/home/widget/bottom_nav_bar.dart';

class DoctorInfo extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String department;

  const DoctorInfo({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: MyText.doctorInfo,
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(MyText.sortBy),
                  hSpace(5),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                        color: MyColor.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          MyText.sort,
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
                      backgroundColor: MyColor.secondaryColor,
                      child: Icon(
                        Icons.star_border_outlined,
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
                      backgroundColor: MyColor.secondaryColor,
                      child: Icon(
                        Icons.favorite_outline,
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
                      backgroundColor: MyColor.secondaryColor,
                      child: Icon(
                        Icons.female,
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
                      backgroundColor: MyColor.secondaryColor,
                      child: Icon(
                        Icons.male,
                        color: MyColor.primaryColor,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              vSpace(10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                        Column(
                          children: [
                            Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                color: MyColor.primaryColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  hSpace(5),
                                  const CircleAvatar(
                                    radius: 16,
                                    backgroundColor: MyColor.secondaryColor,
                                    child: Icon(
                                      Icons.workspace_premium_outlined,
                                      color: MyColor.primaryColor,
                                    ),
                                  ),
                                  hSpace(10),
                                  const Text(
                                    MyText.experience,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            vSpace(5),
                            Container(
                              width: 150,
                              height: 130,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: MyColor.primaryColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: MyText.focus,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: MyText.theImpact,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    vSpace(10),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
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
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 22,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
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
                    ),
                    vSpace(10),
                    Row(
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
                    )
                  ],
                ),
              ),
              vSpace(15),
              Text(
                MyText.profile,
                style: MyStyles.title48Bluew100
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                MyText.infoLorem,
                style: MyStyles.title12Blackw300.copyWith(fontSize: 14),
              ),
              vSpace(10),
              Text(
                MyText.careerPath,
                style: MyStyles.title48Bluew100
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                MyText.infoLorem,
                style: MyStyles.title12Blackw300.copyWith(fontSize: 14),
              ),
              vSpace(10),
              Text(
                MyText.highlights,
                style: MyStyles.title48Bluew100
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                MyText.infoLorem,
                style: MyStyles.title12Blackw300.copyWith(fontSize: 14),
              ),
              vSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
