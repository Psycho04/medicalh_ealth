import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_images.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';
import 'package:medicalh_ealth/feature/home/widget/bottom_nav_bar.dart';
import 'package:medicalh_ealth/feature/profile/profile%20details/profile_details.dart';
import 'package:medicalh_ealth/feature/profile/settings/settings_screen.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
            onPressed: () {}),
        title: const Text(
          MyText.myProfile,
          style: TextStyle(
              color: MyColor.primaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            vSpace(20),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(MyImages.johnDou),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
            vSpace(10),
            const Text(
              MyText.johnDoe,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            vSpace(30),
            _buildMenuItem(Icons.person_2_outlined, MyText.profile, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileDetails()),
              );
            }),
            _buildMenuItem(Icons.favorite_border, MyText.favorite, () {}),
            _buildMenuItem(
                Icons.payment_outlined, MyText.paymentMethod, () {}),
            _buildMenuItem(Icons.lock_outline, MyText.privacyPolicy, () {}),
            _buildMenuItem(Icons.settings_outlined, MyText.settings, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            }),
            _buildMenuItem(Icons.question_mark, MyText.help, () {}),
            _buildMenuItem(Icons.logout_outlined, MyText.logout, () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: MyColor.secondaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: MyColor.primaryColor),
            ),
            hSpace(20),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios,
                color: MyColor.secondaryColor, size: 16),
          ],
        ),
      ),
    );
  }
}
