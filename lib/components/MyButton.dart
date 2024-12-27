import 'package:flutter/material.dart';
import 'package:talentaa_copas/components/Mystyles.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final IconData? icon;
  final bool isFullWidth;
  final double height;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;

  MyButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.icon,
    this.isFullWidth = true,
    this.height = AppStyles.radiusXXL,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isFullWidth ? double.infinity : null, // This is controlled by the parent widget
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppStyles.primary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppStyles.radiusXL),
          ),
          minimumSize: Size(0, height),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: TextStyle(
                color: textColor ?? AppStyles.textLight,
                fontSize: fontSize ?? 18,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: AppStyles.paddingS),
              Icon(icon, color: textColor ?? AppStyles.textLight, size: 20),
            ]
          ],
        ),
      ),
    );
  }
}
