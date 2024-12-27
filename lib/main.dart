import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talentaa_copas/pages/DetailLaporanPage.dart';
import 'package:talentaa_copas/pages/LoginPage.dart';
import 'package:talentaa_copas/pages/MainMenu.dart';
import 'package:talentaa_copas/pages/ProfilePage.dart';
import 'package:talentaa_copas/pages/ReportPage.dart';
import 'package:talentaa_copas/pages/SplashScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  Get.put(sharedPreferences);  // Register SharedPreferences instance
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Demo',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/main', page: () => MainMenu()),
        GetPage(name: '/report', page: () => ReportPage()),
        GetPage(name: '/profile', page: () => ProfilePage()),
        GetPage(name: '/detail', page: () => Detaillaporanpage()),
      ],
    );
  }
}