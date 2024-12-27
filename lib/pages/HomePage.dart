import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/MyCategoriesLine.dart';
import '../components/MyHeading.dart';
import '../components/MyLaporanCard.dart';
import '../components/Mystyles.dart';
import '../controller/MainMenuController.dart';

class HomePage extends StatelessWidget {
  final MainMenuController navigationController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyHeading(),
        backgroundColor: AppStyles.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            color: AppStyles.textLight,
            onPressed: () {
              Get.snackbar(
                'Notifikasi',
                'Belum ada notifikasi baru.',
                snackPosition: SnackPosition.TOP,
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppStyles.spaceXL),
              Mycategoriesline(
                title: 'Laporan Pembelajaran',
                image: 'images/boy1.png',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppStyles.paddingXL),
                child: Mylaporancard(
                  title: 'Laporan Harian',
                  date: '23 Desember 2024',
                  onPress: () {
                    navigationController.updateIndex(1);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
