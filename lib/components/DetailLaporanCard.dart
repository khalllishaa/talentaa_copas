import 'package:flutter/material.dart';
import 'package:talentaa_copas/components/Mystyles.dart';

class DetailLaporanCard extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;
  final bool isExpanded;
  final VoidCallback onTap;

  const DetailLaporanCard({
    Key? key,
    required this.title,
    required this.content,
    required this.icon,
    required this.isExpanded,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppStyles.paddingL),
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
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.all(AppStyles.paddingL),
          childrenPadding: EdgeInsets.only(
            left: AppStyles.paddingL,
            right: AppStyles.paddingL,
            bottom: AppStyles.paddingL,
          ),
          title: Row(
            children: [
              Container(
                width: AppStyles.detailIconSize,
                height: AppStyles.detailIconSize,
                padding: EdgeInsets.all(AppStyles.paddingS),
                decoration: BoxDecoration(
                  color: AppStyles.primaryLight,
                  borderRadius: BorderRadius.circular(AppStyles.radiusM),
                ),
                child: Icon(
                  icon,
                  color: AppStyles.primary,
                  size: AppStyles.iconM,
                ),
              ),
              SizedBox(width: AppStyles.paddingM),
              Expanded(
                child: Text(
                  title,
                  style: AppStyles.heading2.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          children: [
            Text(
              content,
              style: AppStyles.bodyMedium.copyWith(
                height: 1.5,
              ),
            ),
          ],
          onExpansionChanged: (_) => onTap(),
          initiallyExpanded: isExpanded,
        ),
      ),
    );
  }
}
