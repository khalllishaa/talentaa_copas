import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final SharedPreferences sharedPreferences;

  LoginController(this.sharedPreferences);

  Future<void> login() async {
    final username = usernameController.text.trim();
    final password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      Get.snackbar('Login Failed', 'Please fill in all fields.');
      return;
    }

    if (username == 'admin' && password == 'admin') {
      await sharedPreferences.setString('username', username);
      Get.offAllNamed('/main');
    } else {
      Get.snackbar('Login Failed', 'Invalid Username or Password.');
    }
  }
}
