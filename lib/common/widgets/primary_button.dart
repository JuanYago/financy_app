import 'dart:ui';

import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButton({super.key, this.onPressed, required this.text});

  final BorderRadius _borderRadius = const BorderRadius.all(Radius.circular(38.0));
  @override
  Widget build(BuildContext context) {
    return  Ink(
        height: 48.0,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          gradient: LinearGradient(
            colors: AppColors.greenGradientColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: InkWell(
          borderRadius: _borderRadius,
          onTap: () {
            onPressed!();
          },
          child: Align(
            child: Text(
              text,
              style: AppTextStyles.mediumText18.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
      );
  }
}
