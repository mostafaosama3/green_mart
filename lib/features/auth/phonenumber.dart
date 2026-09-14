import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/constants/appimages.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/appcolor.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';

import 'package:green_mart/features/auth/login.dart';
import 'package:green_mart/features/auth/otp_screen.dart';

import '../../core/widgets/custom_textfield.dart';

class Phonenumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: IconButton(onPressed: (){
          pushReplacement(context, Login());
        }, icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [ 
            const Gap(40),     
            Text("Enter your mobile number", style: TextStyles.headline1.copyWith(fontWeight: .w600,fontSize: 30)),
            Gap(16),
            Text(
              "We need to verify you. We will send you a one time verification code.",
              style: TextStyles.caption1.copyWith(color: AppColors.greyColor,fontWeight: .w600),
            ),
            Gap(40),
             CustomTextfield(title: "", hintText: "01xxxxxxxxx"),
         
             Gap(40),
            MainButton(title: "Next", ontap: () {
 pushReplacement(context, OtpScreen());
           
            }),
        Gap(20),
        
           
            
          ],
        ),
      ),
    );
  }
}
