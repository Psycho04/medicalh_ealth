import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: MyColor.primaryColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          MyText.settings,
          style: TextStyle(
              color: MyColor.primaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: Column(
          children: [
            _buildSettingItem(
              context,
              icon: Icons.notifications_outlined,
              title: MyText.notificationSetting,
              onTap: () {},
            ),
            vSpace(15),
            _buildSettingItem(
              context,
              icon: Icons.key,
              title: MyText.passwordManager,
              onTap: () {},
            ),
            vSpace(15),
            _buildSettingItem(
              context,
              icon: Icons.person_outlined,
              title: MyText.deleteAccount,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: MyColor.primaryColor,
            size: 30,
          ),
          hSpace(30),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            color: MyColor.primaryColor,
            size: 16,
          ),
        ],
      ),
    );
  }
}
