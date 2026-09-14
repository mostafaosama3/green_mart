import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/constants/appimages.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/appcolor.dart';
import 'package:green_mart/features/auth/login.dart';
import '../../core/widgets/main_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              mainAxisSize: .min,
              children: [
                SvgPicture.asset(AppImages.carrotSvg),
                Text(
                  'Welcome\nto our store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: AppColors.whiteColor,
                  ),
                ),
                Gap(10),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.whiteColor,
                  ),
                ),
                Gap(20),
                MainButton(title: "Get Started", ontap: () {
pushReplacement(context, Login());
                
                }),
                Gap(10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
