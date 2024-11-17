import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
 Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      alignment: Alignment.center,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
        colors: AppColors.greenGradientColors,
         begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: const Center(
        child: Text(
          'financy',
          style: AppTextStyles.bigText,
          ),
        ),
      ),
    );
}
}