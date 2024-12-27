import 'package:flutter/material.dart';
import 'package:talentaa_copas/components/Mystyles.dart';

class Mylaporancard extends StatelessWidget {
  final String title;
  final String date;
  final VoidCallback onPress;

  const Mylaporancard({
    super.key,
    required this.title,
    required this.date,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        decoration: AppStyles.cardDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(AppStyles.paddingL),
              decoration: BoxDecoration(
                color: AppStyles.backgroundLogin,
                borderRadius: BorderRadius.circular(AppStyles.radiusXL),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppStyles.paddingM),
                    decoration: AppStyles.iconContainerDecoration,
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
                          style: AppStyles.heading2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: AppStyles.paddingXS),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today_sharp,
                              color: AppStyles.primary,
                              size: AppStyles.iconS,
                            ),
                            const SizedBox(width: AppStyles.paddingXS),
                            Text(
                              date,
                              style: AppStyles.headingStyle.copyWith(
                                color: AppStyles.primary,
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
          ],
        ),
      ),
    );
  }
}
