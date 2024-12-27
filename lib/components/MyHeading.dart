import 'package:flutter/material.dart';
import 'package:talentaa_copas/components/Mystyles.dart';

class MyHeading extends StatelessWidget {
  const MyHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppStyles.profile,
      margin: EdgeInsets.symmetric(horizontal: AppStyles.paddingXL),
      child: Stack(
        children: [
          // Logo
          Positioned(
            left: AppStyles.paddingXL,
            top: AppStyles.paddingL,
            child: Container(
              width: AppStyles.logoHeading,
              height: AppStyles.logoHeading,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/logo.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          // Welcome Text
          Positioned(
            left: AppStyles.logoHeading + AppStyles.paddingXL * 2,
            top: AppStyles.paddingL,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat Datang,',
                  style: AppStyles.headingStyle,
                ),
                Text('User',
                  style: AppStyles.heading1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
