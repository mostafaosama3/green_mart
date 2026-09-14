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
import 'package:green_mart/features/auth/phonenumber.dart';
import 'package:pinput/pinput.dart';
import '../../core/widgets/custom_textfield.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyles.body.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F7),
        borderRadius: BorderRadius.circular(12),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        border: Border.all(color: AppColors.primaryColor, width: 1.5),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: IconButton(onPressed: (){
         pushReplacement(context, Login());
        }, icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: .start,
            crossAxisAlignment: .start,
            children: [ 
              const Gap(40),     
              Text("Enter verification code", style: TextStyles.headline1.copyWith(fontWeight: .w600,fontSize: 30)),
              Gap(16),
              Text(
                "We have sent SMS to: 01XXXXXXXXXX",
                style: TextStyles.caption1.copyWith(color: AppColors.greyColor,fontWeight: .w600),
              ),
              Gap(30),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Pinput(
                  length: 5,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  showCursor: true,
                ),
              ),
              Gap(20),
              Align(
                alignment: .bottomRight,
                child: TextButton(onPressed: (){
                    pushReplacement(context, Phonenumber());
                  },
                   style: TextButton.styleFrom(
                    minimumSize: .zero,
                    padding:.symmetric(horizontal: 4,vertical: 2,),
                   ), child: Text("Change Phone Number",style: TextStyles.caption1.copyWith(color: AppColors.greyColor,fontWeight: .w600),),
                  ),
              ),
          
            
               Gap(20),
              MainButton(title: "Confirm", ontap: () {
              }),
          Gap(10),
          Center(
            child: TextButton(onPressed: (){ 
                    },
                     child: Text("Resend OTP",style: TextStyles.caption1.copyWith(color: AppColors.mangoColor,fontWeight: .w600),),
                    ),
          ),
             
              
            ],
          ),
        ),
      ),
    );
  }
}
