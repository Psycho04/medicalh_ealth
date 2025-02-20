import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalh_ealth/auth/widget/my_text_btn.dart';
import 'package:medicalh_ealth/core/my_images.dart';
import 'package:medicalh_ealth/core/my_styles.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(MyImages.appLogo),
            const Text(MyText.skin, style: MyStyles.title48Bluew100),
            Text(MyText.dermatologyCenter,
                style: MyStyles.title12Blackw300.copyWith(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff2260FF))),
            verticalSpacing(50),
            const Text(
              MyText.lorem,
              textAlign: TextAlign.center,
            ),
            verticalSpacing(30),
            MyTextBtn(
              onTap: () {},
              text: MyText.login,
              color: const Color(0xff2260FF),
              textColor: Colors.white,
            ),
            verticalSpacing(10),
            MyTextBtn(
              onTap: () {},
              text: MyText.signUP,
              color: const Color(0xffCAD6FF),
              textColor: const Color(0xff2260FF),
            ),
          ],
        ),
      ),
    );
  }
}