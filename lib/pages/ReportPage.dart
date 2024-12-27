import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../components/MyHeading.dart';
import '../components/Mystyles.dart';
import '../components/ReportCard.dart';
import '../controller/ReportController.dart';

class ReportModel {
  final String date;
  final String title;
  final String description;

  ReportModel({
    required this.date,
    required this.title,
    required this.description,
  });
}

class ReportPage extends StatelessWidget {
  final ReportController controller = Get.put(ReportController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyHeading(),
        backgroundColor: AppStyles.primary,
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_month),
            color: AppStyles.textLight,
            onPressed: controller.pickMonth,
          ),
        ],
      ),
      body: Obx(() {
        // Generate reports dynamically based on selectedMonth
        List<ReportModel> reports = List.generate(
          10,
              (index) => ReportModel(
            date:
            '${controller.selectedMonth.value.year}-${controller.selectedMonth.value.month.toString().padLeft(2, '0')}-${index + 1}',
            title: 'Report ${index + 1}',
            description: 'This is the description for Report ${index + 1}.',
          ),
        );
        // Build ListView for reports
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: AppStyles.paddingXL),
          itemCount: reports.length,
          itemBuilder: (context, index) {
            return Reportcard(
              title: reports[index].title,
              date: reports[index].date,
              description: reports[index].description,
              index: index,
              onTap: () {
                Get.snackbar(
                  'Report Selected',
                  'You selected ${reports[index].title}',
                  snackPosition: SnackPosition.TOP,
                );
              },
            );
          },
        );
      }),
    );
  }
}