import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/constants/appimages.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/appcolor.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/login.dart';
import 'package:green_mart/features/main/main_app_screen.dart';

import '../../core/widgets/custom_textfield.dart';

class Signup extends StatelessWidget {
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
                  Text("Signup", style: TextStyles.headline1),
                  Gap(16),
                  Text(
                    "Enter your credentials to continue",
                    style: TextStyles.body.copyWith(color: AppColors.greyColor,fontWeight: .w600),
                  ),
                  Gap(40),
                   CustomTextfield(title: "Name", hintText: "Mostafa Osama"),
                   Gap(15),
                  CustomTextfield(title: "Email", hintText: "example@gmail.com"),
                  Gap(15),
                  CustomTextfield(title: "Password", hintText: "********"),
                   Gap(40),
                  MainButton(title: "Signup", ontap: () {
                    pushReplacement(context, MainAppScreen());
                  }),
              Gap(20),
              Row(
                mainAxisAlignment: .center,
                children: [
              Text("Already have an account?",style: TextStyles.caption1),
              TextButton(onPressed: (){
                pushReplacement(context, Login());
              }, child: Text("Login",style: TextStyles.caption1.copyWith(color: AppColors.primaryColor,fontWeight: .w600),),
               style: TextButton.styleFrom(
                minimumSize: .zero,
                padding:.symmetric(horizontal: 4,vertical: 2,),
               ),
              ),
              
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
