import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/constants/appimages.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/appcolor.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/phonenumber.dart';
import 'package:green_mart/features/auth/signup.dart';
import 'package:green_mart/features/main/main_app_screen.dart';

import '../../core/widgets/custom_textfield.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                children: [
                  Align(
                    alignment: .center,
                    child: SvgPicture.asset(AppImages.carrotSvg1),
                  ),
                  Gap(40),
                  Text("Login", style: TextStyles.headline1),
                  Gap(16),
                  Text(
                    "Enter your email and password",
                    style: TextStyles.body.copyWith(color: AppColors.greyColor),
                  ),
                  Gap(40),
                  CustomTextfield(title: "Email", hintText: "example@gmail.com"),
                  Gap(10),
                  CustomTextfield(title: "Password", hintText: "********"),
              
              
                  
                  Gap(20),
                  Align(
                    alignment: .bottomRight,
                    child: TextButton(
                      onPressed: () {

                      pushReplacement(context, Phonenumber());
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.body.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  MainButton(title: "Login", ontap: () {
                    pushReplacement(context, MainAppScreen());
                  }),
              Gap(20),
              Row(
                mainAxisAlignment: .center,
                children: [
              Text("Don’t have an account?",style: TextStyles.caption1),
              TextButton(onPressed: (){
                pushReplacement(context, Signup());

              }, child: Text("Signup",style: TextStyles.caption1.copyWith(color: AppColors.primaryColor,fontWeight: .w600),),
               style: TextButton.styleFrom(
                minimumSize: .zero,
                padding:.symmetric(horizontal: 4,vertical: 2,),
               ),
              )
              
                ],
              ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
