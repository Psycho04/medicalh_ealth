import 'package:flutter/material.dart';
import 'package:medicalh_ealth/auth/set_screen.dart';
import 'package:medicalh_ealth/auth/signup_screen.dart';
import 'package:medicalh_ealth/auth/widget/my_text_btn.dart';
import 'package:medicalh_ealth/auth/widget/my_text_field_with_name.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_styles.dart';
import 'package:medicalh_ealth/core/my_text.dart';
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
              TextFieldWithName(
                text: MyText.emailOrMobile,
                hintText: MyText.example,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email or mobile';
                  }
                  return null;
                },
                controller: TextEditingController(),
              ),
              TextFieldWithName(
                text: MyText.password,
                hintText: MyText.dots,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                controller: TextEditingController(),
                suffixWidget: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye),
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SetScreen()));
                    },
                    child: const Text(
                      MyText.forgetPassword,
                      style: TextStyle(color: MyColor.primaryColor),
                    ),
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
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignupScreen()));
                          },
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