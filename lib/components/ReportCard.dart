import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talentaa_copas/components/Mystyles.dart';

import '../pages/DetailLaporanPage.dart';

class Reportcard extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  final int index;
  final VoidCallback onTap;

  const Reportcard({
    super.key,
    required this.title,
    required this.date,
    required this.description,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(
            () => const Detaillaporanpage(),
        arguments: {
          'id': 'laporan_${index + 1}',
          'date': date,
        },
      ),      child: Container(
        margin: EdgeInsets.only(bottom: AppStyles.paddingL),
        padding: EdgeInsets.all(AppStyles.paddingL),
        decoration: BoxDecoration(
          color: AppStyles.cardBackground,
          borderRadius: BorderRadius.circular(AppStyles.radiusL),
          boxShadow: [
            BoxShadow(
              color: AppStyles.shadowColor,
              blurRadius: 10,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(AppStyles.paddingM),
              decoration: BoxDecoration(
                color: AppStyles.primaryLight,
                borderRadius: BorderRadius.circular(AppStyles.radiusM),
              ),
              child: Icon(
                Icons.description_outlined,
                color: AppStyles.primary,
                size: AppStyles.iconL,
              ),
            ),
            SizedBox(width: AppStyles.paddingM),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyles.heading2.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppStyles.paddingXS),
                  Text(
                    description,
                    style: AppStyles.caption.copyWith(
                      color: AppStyles.textDark.withOpacity(0.7),
                      height: 1.5,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: AppStyles.paddingS),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: AppStyles.iconS,
                        color: AppStyles.textSecondary,
                      ),
                      SizedBox(width: AppStyles.paddingXS),
                      Text(
                        date,
                        style: AppStyles.caption.copyWith(
                          color: AppStyles.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
