import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:talentaa_copas/components/Mystyles.dart';

import '../controller/MainMenuController.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainMenuController>();

    return Obx(
          () => Container(
        height: AppStyles.bottomNavHeight,
        margin: const EdgeInsets.only(bottom: 0),
        decoration: AppStyles.bottomNavDecoration,
        child: CrystalNavigationBar(
          currentIndex: controller.selectedIndex.value,
          height: AppStyles.bottomNavHeight - 13,
          unselectedItemColor: Colors.grey,
          backgroundColor: AppStyles.cardBackground,
          onTap: controller.changeIndex,
          items: [
            CrystalNavigationBarItem(
              icon: IconlyBold.home,
              unselectedIcon: IconlyLight.home,
              selectedColor: AppStyles.primary,
            ),
            CrystalNavigationBarItem(
              icon: IconlyBold.paper,
              unselectedIcon: IconlyLight.paper,
              selectedColor: AppStyles.primary,
            ),
            CrystalNavigationBarItem(
              icon: IconlyBold.profile,
              unselectedIcon: IconlyLight.profile,
              selectedColor: AppStyles.primary,
            ),
          ],
        ),
      ),
    );  }
}
