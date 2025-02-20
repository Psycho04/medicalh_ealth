import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalh_ealth/auth/widget/my_text_btn.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_images.dart';
import 'package:medicalh_ealth/core/my_styles.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/my_text_form_field.dart';
import 'package:medicalh_ealth/core/spacing.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  static const String routeName = 'LoginScreen';
  LoginScreen({super.key});

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyText.hello,
          style: MyStyles.title24Whitew300.copyWith(
              color: MyColor.primaryColor, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpacing(50),
              Text(MyText.welcome,
                  style: MyStyles.title24Whitew300.copyWith(
                      color: MyColor.primaryColor,
                      fontWeight: FontWeight.w600)),
              verticalSpacing(50),
              const Text(
                MyText.emailOrMobile,
                style: MyStyles.title20Black500,
              ),
              verticalSpacing(10),
              CustomTextField(
                text: MyText.example,
                textAlign: TextAlign.start,
                keyboardType: TextInputType.emailAddress,
                controller: TextEditingController(),
                onTap: () {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email or mobile';
                  }
                  return null;
                },
                obscureText: false,
              ),
              verticalSpacing(20),
              const Text(
                MyText.password,
                style: MyStyles.title20Black500,
              ),
              verticalSpacing(10),
              CustomTextField(
                text: MyText.password,
                textAlign: TextAlign.start,
                controller: TextEditingController(),
                onTap: () {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                suffix: const Icon(Icons.visibility_off_outlined),
              ),
              const Row(
                children: [
                  Spacer(),
                  Text(
                    MyText.forgetPassword,
                    style: TextStyle(color: MyColor.primaryColor),
                  )
                ],
              ),
              verticalSpacing(50),
              Center(
                child: Column(
                  children: [
                    MyTextBtn(
                        onTap: () {},
                        text: MyText.login,
                        color: MyColor.primaryColor,
                        textColor: Colors.white),
                    verticalSpacing(20),
                    const Text(MyText.or, style: MyStyles.title12Blackw300),
                    verticalSpacing(20),
                    /* حط الايكون هنا */
                    verticalSpacing(35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(MyText.dontHaveAccount),
                        horizontalSpacing(5),
                        InkWell(
                          onTap: () {},
                          child: const Text(MyText.signUP,
                              style: TextStyle(color: MyColor.primaryColor)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
