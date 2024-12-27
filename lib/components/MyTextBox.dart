import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:talentaa_copas/components/Mystyles.dart';

enum BoxStyle { shadow, border }

class TextPairWidget extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final BoxStyle boxStyle;
  final IconData? icon;

  const TextPairWidget({
    required this.primaryText,
    required this.secondaryText,
    this.icon,
    required this.boxStyle,
  });

  @override
  Widget build(BuildContext context) {
    BoxDecoration boxDecoration = boxStyle == BoxStyle.shadow
        ? BoxDecoration(
      color: AppStyles.primary,
      borderRadius: BorderRadius.circular(AppStyles.radiusM),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 6,
          offset: const Offset(2, 4),
        ),
      ],
    )
        : BoxDecoration(
      border: Border.all(
        color: AppStyles.primary,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(AppStyles.radiusM),
    );

    return Container(
      decoration: boxDecoration,
      padding: EdgeInsets.symmetric(
        horizontal: AppStyles.paddingL,
        vertical: AppStyles.paddingM,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Bagian Kiri
          Expanded(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(AppStyles.paddingS),
                  decoration: BoxDecoration(
                    color: AppStyles.primaryLight,
                    borderRadius: BorderRadius.circular(AppStyles.radiusM),
                  ),
                  child: Icon(
                    icon ?? IconlyBold.location,
                    color: AppStyles.primary,
                    size: AppStyles.iconL,
                  ),
                ),
                SizedBox(width: AppStyles.spaceM),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      primaryText,
                      style: AppStyles.heading2.copyWith(
                        color: AppStyles.textLight,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      secondaryText,
                      style: AppStyles.heading2.copyWith(
                        color: AppStyles.textLight,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Separator Vertikal
          Container(
            height: AppStyles.iconXL,
            width: 1,
            color: AppStyles.textLight,
            margin: EdgeInsets.symmetric(horizontal: AppStyles.spaceM),
          ),

          // Bagian Kanan
          Expanded(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(AppStyles.paddingS),
                  decoration: BoxDecoration(
                    color: AppStyles.primaryLight,
                    borderRadius: BorderRadius.circular(AppStyles.radiusM),
                  ),
                  child: Icon(
                    Icons.male,
                    color: AppStyles.primary,
                    size: AppStyles.iconL,
                  ),
                ),
                SizedBox(width: AppStyles.spaceM),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gender',
                      style: AppStyles.heading2.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Laki laki',
                      style: AppStyles.heading2.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
