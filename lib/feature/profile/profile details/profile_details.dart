import 'package:flutter/material.dart';
import 'package:medicalh_ealth/core/my_colors.dart';
import 'package:medicalh_ealth/core/my_images.dart';
import 'package:medicalh_ealth/core/my_text.dart';
import 'package:medicalh_ealth/core/spacing.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  // Controllers for text fields
  final TextEditingController _nameController =
      TextEditingController(text: MyText.johnDoe);
  final TextEditingController _phoneController =
      TextEditingController(text: MyText.phoneExample);
  final TextEditingController _emailController =
      TextEditingController(text: MyText.emailExample);
  final TextEditingController _dobController =
      TextEditingController(text: MyText.dateFormat);

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _dobController.dispose();
    super.dispose();
  }

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
          MyText.profile,
          style: TextStyle(
              color: MyColor.primaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: MyColor.primaryColor),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSpace(20),
              Center(
                child: Stack(
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
                          color: MyColor.primaryColor,
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
              ),
              vSpace(30),
              const Text(
                MyText.fullName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              vSpace(8),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: MyColor.primaryColor.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
              vSpace(20),
              const Text(
                MyText.phoneNumber,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              vSpace(8),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: MyColor.primaryColor.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
              vSpace(20),
              const Text(
                MyText.email,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              vSpace(8),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: MyColor.primaryColor.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
              vSpace(20),
              const Text(
                MyText.dateOfBirth,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              vSpace(8),
              TextField(
                controller: _dobController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: MyColor.primaryColor.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
              vSpace(40),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColor.primaryColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    MyText.updateProfile,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
