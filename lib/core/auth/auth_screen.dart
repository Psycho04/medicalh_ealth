import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalh_ealth/core/my_images.dart';
import 'package:medicalh_ealth/core/my_styles.dart';
import 'package:medicalh_ealth/core/my_text.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(MyImages.appLogo),
              const Text(MyText.skin, style: MyStyles.title48Bluew100),
              Text(MyText.dermatologyCenter,
                  style: MyStyles.title12Blackw300.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff2260FF))),
              const SizedBox(
                height: 50,
              ),
              const Text(
                MyText.lorem,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 90, vertical: 10)),
                    backgroundColor: WidgetStatePropertyAll(Color(0xff2260FF))),
                child: Text(
                  MyText.login,
                  style: MyStyles.title24Whitew300
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 90, vertical: 10)),
                    backgroundColor: WidgetStatePropertyAll(Color(0xffCAD6FF))),
                child: Text(
                  MyText.login,
                  style: MyStyles.title24Whitew300.copyWith(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff2260FF)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
