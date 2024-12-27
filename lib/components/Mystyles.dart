import 'package:flutter/material.dart';

class AppStyles {

  // Color Apps
  static const Color textLight = Color(0xFFF5F5F5);
  static const Color primaryLight = Color(0xFFE6EAFF);
  static const Color textDark = Color(0xFF353535);
  static const Color backgroundLogin = Color(0xFFD5DDFF);
  static const Color cardBackground = Colors.white;
  static const Color primary = Color(0xFF6E85E8);
  static const Color error = Color(0xFFF8475E);
  static const Color textSecondary = Color(0xFF43508C);
  static Color shadowColor = Colors.grey.withOpacity(0.1);

  // Text Style
  static const TextStyle headingStyle = TextStyle(fontSize: 12, fontFamily: 'Manrope', fontWeight: FontWeight.w500, color: AppStyles.textLight);
  static const TextStyle heading1 = TextStyle(fontSize: 20, fontFamily: 'Manrope', fontWeight: FontWeight.w700, color: AppStyles.textLight);
  static const TextStyle heading2 = TextStyle(fontSize: 16, fontFamily: 'Manrope');
  static const TextStyle heading3 = TextStyle(fontSize: 20, fontFamily: 'Manrope', fontWeight: FontWeight.w700, color: AppStyles.textDark);
  static const TextStyle heading4 = TextStyle(fontSize: 16, fontFamily: 'Manrope', color: AppStyles.primary);
  static TextStyle caption = TextStyle(fontSize: 12, fontFamily: 'Manrope', fontWeight: FontWeight.w500, color: AppStyles.textDark.withOpacity(0.7), height: 1.5,);
  static const TextStyle bodyMedium = TextStyle(fontSize: 14, fontFamily: 'Manrope', fontWeight: FontWeight.w500, color: AppStyles.textDark,);

  //Box Decoration
  static BoxDecoration cardDecoration = BoxDecoration(color: AppStyles.cardBackground, borderRadius: BorderRadius.circular(AppStyles.radiusXL), boxShadow: [
      BoxShadow(
        color: AppStyles.shadowColor,
        spreadRadius: 1,
        blurRadius: 10,
        offset: const Offset(0, 1),
      ),
    ],
  );
  static BoxDecoration bottomNavDecoration = BoxDecoration(color: AppStyles.cardBackground, borderRadius: BorderRadius.circular(AppStyles.radiusXL),);
  static BoxDecoration categoryLineDecoration = BoxDecoration(color: AppStyles.primary, borderRadius: BorderRadius.circular(AppStyles.radiusS),);
  static BoxDecoration iconContainerDecoration = BoxDecoration(color: AppStyles.primary.withOpacity(0.1), borderRadius: BorderRadius.circular(AppStyles.radiusM),);

  // Image & widget
  static const double logo = 100.0;
  static const double logoHeading = 40.0;
  static const double profile = 70.0;
  static const double categoryLineHeight = 64.0;
  static const double categoryImageSize = 80.0;
  static const double cardWidth = 280.0;
  static const double detailIconSize = 40.0;
  static const double detailHeaderRadius = 50.0;
  static const double detailHeaderHeight = 100.0;
  static const double bottomNavHeight = 90.0;


  // Icon Sizes
  static const double iconS = 12.0;
  static const double iconM = 20.0;
  static const double iconL = 24.0;
  static const double iconXL = 30.0;

  // Padding & Margin
  static const double paddingXS = 4.0;
  static const double paddingS = 8.0;
  static const double paddingM = 12.0;
  static const double paddingL = 15.0;
  static const double paddingXL = 20.0;
  static const double paddingXXL = 70.0;

  // Spacing
  static const double spaceS = 5.0;
  static const double spaceM = 15.0;
  static const double spaceL = 20.0;
  static const double spaceXL = 35.0;
  static const double spaceXXL = 50.0;

  // Border Radius
  static const double radiusS = 10.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;
  static const double radiusXL = 20.0;
  static const double radiusXXL = 50.0;

  //Icon
  static IconData getLaporanSectionIcon(String title) {
    switch (title.toLowerCase()) {
      case 'kegiatan awal':
        return Icons.wb_sunny_outlined;
      case 'kegiatan inti':
        return Icons.star_outline;
      case 'snack time':
        return Icons.restaurant_outlined;
      case 'kegiatan inklusi':
        return Icons.people_outline;
      case 'catatan khusus':
        return Icons.note_outlined;
      default:
        return Icons.circle_outlined;
    }
  }
  static const IconData back = Icons.arrow_back;

}
