import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/MyButton.dart';
import '../components/MyTextField.dart';
import '../components/Mystyles.dart';
import '../controller/LoginController.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController(Get.find()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundLogin,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Image.asset("images/logo.png", width: AppStyles.logo),
                Text("Talenta Orang Tua", style: AppStyles.heading2),
                Container(
                  padding: EdgeInsets.all(AppStyles.paddingXL),
                  margin: EdgeInsets.all(AppStyles.paddingXL),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppStyles.radiusXL),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Text("Selamat Datang", style: AppStyles.heading3),
                      Text("Semangat buat hari ini ya . .", style: AppStyles.heading2),
                      SizedBox(height: AppStyles.spaceL),
                      MyTextField(controller: controller.usernameController, labelText: 'Username',),
                       SizedBox(height: AppStyles.spaceL),
                       MyTextField(controller: controller.passwordController, labelText: 'Password', isPassword: true),
                       SizedBox(height: AppStyles.spaceXL),
                      // Login button
                      MyButton(
                        buttonText: 'Login',
                        icon: Icons.arrow_forward_ios_rounded,
                        onPressed: () => controller.login(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
