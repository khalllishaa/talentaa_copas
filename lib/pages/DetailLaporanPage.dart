import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/DetailLaporanCard.dart';
import '../components/Mystyles.dart';
import '../controller/DetailLaporanController.dart';

class Detaillaporanpage extends StatelessWidget {
  const Detaillaporanpage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailLaporanController());

    return Scaffold(
      backgroundColor: AppStyles.textLight,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                height: AppStyles.detailHeaderHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppStyles.detailHeaderRadius),
                    bottomRight: Radius.circular(AppStyles.detailHeaderRadius),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(AppStyles.paddingXL),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              AppStyles.back,
                              color: AppStyles.textLight,
                              size: AppStyles.iconL,
                            ),
                            onPressed: () => Get.back(),
                          ),
                          Text(
                            'Laporan Harian',
                            style: AppStyles.heading1.copyWith(
                              color: AppStyles.textLight,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Content
              Padding(
                padding: EdgeInsets.all(AppStyles.paddingXL),
                child: Obx(() => Column(
                  children: List.generate(
                    controller.sections.length,
                        (index) => DetailLaporanCard(
                      title: controller.sections[index].title,
                      content: controller.sections[index].content,
                      icon: AppStyles.getLaporanSectionIcon(
                          controller.sections[index].title),
                      isExpanded: controller.sections[index].isExpanded,
                      onTap: () => controller.toggleSection(index),
                    ),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
