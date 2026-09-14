import 'package:flutter/material.dart';
import 'package:green_mart/features/splash/splash_screen.dart';
import 'package:green_mart/core/constants/appfonts.dart';
import 'package:green_mart/core/styles/appcolor.dart';
import 'package:green_mart/core/styles/text_styles.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppFonts.poppins,
        scaffoldBackgroundColor: AppColors.whiteColor,
        appBarTheme: AppBarThemeData(
          backgroundColor: AppColors.whiteColor,
          centerTitle: true,
        ),
        inputDecorationTheme: InputDecorationTheme(
              fillColor: AppColors.accentColor,
           filled: true,
        hintStyle: TextStyles.body.copyWith(color: AppColors.greyColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        ),
         iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        backgroundColor: AppColors.accentColor,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor, onSurface: AppColors.blackColor),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor:Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.greyColor,
          selectedLabelStyle: TextStyles.caption1.copyWith(
            fontWeight: .w500,
          ),
          unselectedLabelStyle: TextStyles.caption1.copyWith(
            fontWeight: .w500,
          )
        ),
      ),
      home: SplashScreen(),
    );
  }
}
