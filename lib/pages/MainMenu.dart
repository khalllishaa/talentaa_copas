import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../components/BottomNav.dart';
import '../controller/MainMenuController.dart';
import 'HomePage.dart';
import 'ProfilePage.dart';
import 'ReportPage.dart';

class MainMenu extends StatelessWidget {
  final MainMenuController navigationController = Get.put(MainMenuController());

  // List of pages to navigate between
  final List<Widget> pages = [
    HomePage(),
    ReportPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
        index: navigationController.selectedIndex.value,
        children: pages,
      )),
      // bottomNavigationBar: Obx(() => BottomNavigationBar(
      //   currentIndex: navigationController.selectedIndex.value,
      //   onTap: navigationController.updateIndex,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.report), label: 'Reports'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //   ],
      // )),
      bottomNavigationBar: const BottomNav(),
    );
  }
}