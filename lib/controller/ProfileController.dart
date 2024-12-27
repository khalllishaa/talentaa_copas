import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

import '../components/Mystyles.dart';

class ProfileController extends GetxController {
  final SharedPreferences sharedPreferences;

  ProfileController(this.sharedPreferences);

  Future<void> logout() async {
    Get.defaultDialog(
      title: "Log Out",
      middleText: "Are you sure you want to log out?",
      titleStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: AppStyles.textLight,
      ),
      middleTextStyle: TextStyle(
        fontSize: 16,
        color: AppStyles.textLight,
      ),
      backgroundColor: AppStyles.primary,
      radius: AppStyles.radiusXL,
      barrierDismissible: false,
      cancel: OutlinedButton(
        onPressed: () {
          Get.back();
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: AppStyles.textLight), // Blue border for 'No'
        ),
        child: Text(
          "No",
          style: TextStyle(fontSize: 16, color: AppStyles.textLight),
        ),
      ),
      confirm: ElevatedButton(
        onPressed: () async {
          await sharedPreferences.remove('username');
          Get.offAllNamed('/'); // Route to SplashScreen
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppStyles.textLight,
          foregroundColor: AppStyles.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppStyles.radiusXL),
          ),
        ),
        child: Text(
          "Yes",
          style: TextStyle(fontSize: 16, color: AppStyles.primary), // White text
        ),
      ),
    );
  }
}
