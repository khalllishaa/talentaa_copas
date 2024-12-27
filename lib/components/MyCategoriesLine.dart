import 'package:flutter/material.dart';
import 'package:talentaa_copas/components/Mystyles.dart';

class Mycategoriesline extends StatelessWidget {
  final String image;
  final String title;

  const Mycategoriesline({
    super.key,
    required this.image,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppStyles.categoryLineHeight,
      margin: EdgeInsets.symmetric(horizontal: AppStyles.paddingXL),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: AppStyles.categoryLineHeight * 0.65,
            decoration: AppStyles.categoryLineDecoration,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: AppStyles.categoryImageSize + AppStyles.paddingXL),
                child: Text(
                  title,
                  style: AppStyles.heading2.copyWith(
                    color: AppStyles.textLight,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -AppStyles.categoryLineHeight * 0.5,
            left: AppStyles.paddingXL,
            child: Container(
              width: AppStyles.categoryImageSize,
              height: AppStyles.categoryImageSize,
              padding: EdgeInsets.all(AppStyles.paddingXS),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
