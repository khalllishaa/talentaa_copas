import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/Mystyles.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () async {
      final sharedPreferences = await SharedPreferences.getInstance();
      if (sharedPreferences.getString('username') != null) {
        print('Navigating to /main...');
        Get.offAllNamed('/main');
      } else {
        print('Navigating to /login...');
        Get.offAllNamed('/login');
      }
    });
    return Scaffold(
      backgroundColor: AppStyles.backgroundLogin,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              width: AppStyles.logo,
            ),
            SizedBox(height: AppStyles.spaceL),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppStyles.textLight),
            )
          ],
        ),
      ),
    );
  }
}
