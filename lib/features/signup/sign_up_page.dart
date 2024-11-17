import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/constants/app_text_styles.dart';
import 'package:financy_app/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureTextPassword = true; // Campo de estado para controlar a visibilidade da senha
  bool _obscureTextConfirmPassword = true; // Campo de estado para controlar a visibilidade da confirmação de senha

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Start saving',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText.copyWith(
              color: AppColors.secondaryColor,
            ),
          ),
          Text(
            'Your Money!',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText.copyWith(
              color: AppColors.secondaryColor,
            ),
          ),
          Expanded(
            child: Container(
              child: Image.asset(
                "assets/images/sign_up_image.png",
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildTextFormField(
                    labelText: 'Name',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  _buildTextFormField(
                    labelText: 'Email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  _buildTextFormField(
                    labelText: 'Password',
                    obscureText: _obscureTextPassword,
                    toggleVisibility: () {
                      setState(() {
                        _obscureTextPassword = !_obscureTextPassword;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  _buildTextFormField(
                    labelText: 'Confirm Password',
                    obscureText: _obscureTextConfirmPassword,
                    toggleVisibility: () {
                      setState(() {
                        _obscureTextConfirmPassword = !_obscureTextConfirmPassword;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16.0),
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
              text: 'Sign Up',
            ),
          ),
        ],
      ),
      
    );
  }

  Widget _buildTextFormField({
    required String labelText,
    bool obscureText = false,
    required String? Function(String?) validator,
    VoidCallback? toggleVisibility,
  }) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: toggleVisibility != null
            ? InkWell(
                onTap: toggleVisibility,
                child: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.secondaryColor,
                ),
              )
            : null,
        labelText: labelText,
        hintStyle: AppTextStyles.smallText.copyWith(
          color: AppColors.secondaryColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      validator: validator,
    );
  }
}