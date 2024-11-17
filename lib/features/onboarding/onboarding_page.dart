
import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/constants/app_text_styles.dart';
import 'package:financy_app/common/widgets/multi_text_button.dart';
import 'package:financy_app/common/widgets/primary_button.dart';
import 'package:financy_app/features/signup/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ice,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 150,
              color: AppColors.ice,
              child: Image.asset(
                'assets/images/man.png',
              ),
            ),
          ),
           Text(
            'Spend Smarter ',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.secondaryColor,
              ),
          ),
           Text('Save More',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.secondaryColor,
              ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: PrimaryButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  SignUpPage(),
                  ),
                );
              },
              text: 'Get Started',
            ),
          ),
           MultiTextButton(
            onPressed: () {},
            children: [
              Text(
                'Already have an account? ',
                style: AppTextStyles.smallText.copyWith(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Text(
                'Sign In',
                style: AppTextStyles.smallText.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
           ),
            const SizedBox(
              height: 40.0,
            ),
        ],
      ),
    );
  }
}
