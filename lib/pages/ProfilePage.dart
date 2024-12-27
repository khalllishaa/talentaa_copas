import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/MyButton.dart';
import '../components/MyTextBox.dart';
import '../components/Mystyles.dart';
import '../controller/ProfileController.dart';

class ProfileModel {
  final String imageUrl;
  final String name;
  final String fullName;
  final String address;
  final String phone;

  ProfileModel({
    required this.imageUrl,
    required this.name,
    required this.fullName,
    required this.address,
    required this.phone,
  });
}

class ProfilePage extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController(Get.find()));

  @override
  Widget build(BuildContext context) {
    ProfileModel profile = ProfileModel(
      imageUrl: 'https://i.pinimg.com/736x/04/b2/87/04b287f6356732bac1f207ba2599c18d.jpg',
      name: 'Admin',
      fullName: 'adminuser@gmail.com',
      address: 'Kudus',
      phone: '123-456-7890',
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppStyles.spaceM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: AppStyles.spaceXXL),
              CircleAvatar(
                backgroundImage: NetworkImage(profile.imageUrl),
                radius: AppStyles.profile,
              ),
              SizedBox(height: AppStyles.spaceS),
              Text(profile.name, style: AppStyles.heading3),
              Text(profile.fullName, style: AppStyles.heading4),
              SizedBox(height: AppStyles.spaceL),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppStyles.paddingXL),
                child: Column(
                  children: [
                    TextPairWidget(
                      primaryText: profile.name,
                      secondaryText: profile.address,
                      boxStyle: BoxStyle.shadow,
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppStyles.spaceXL),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppStyles.paddingXXL),
                child: MyButton(
                  buttonText: 'Log Out',
                  icon: Icons.logout,
                  onPressed: () => controller.logout(),
                  backgroundColor: AppStyles.error,
                  textColor: AppStyles.textLight,
                ),
              ),
              SizedBox(height: AppStyles.spaceXL),
            ],
          ),
        ),
      ),
    );
  }
}
