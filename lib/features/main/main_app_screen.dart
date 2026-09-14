import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/core/constants/appimages.dart';
import 'package:green_mart/core/styles/appcolor.dart';
import 'package:green_mart/core/widgets/custom_svg_image.dart';
import 'package:green_mart/features/shop/page/profile.dart';
import 'package:green_mart/features/shop/page/shop_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});
  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  final List<Widget>Screens=[
  ShopScreen(),
const Scaffold(body: Center(child: Text("Search"),),),
const Scaffold(body: Center(child: Text("Cart"),),),
const Scaffold(body: Center(child: Text("Favourite"),),),
AccountScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentIndex],
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Container _bottomNavBar() {
    return Container( padding: const EdgeInsets.only(top: 16),
    decoration: BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          color: AppColors.blackColor.withValues(alpha: 0.09),
          blurRadius: 14,
          spreadRadius: 0,
          offset: const Offset(0, -5),
        ),
      ],
    ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem( 
            
            icon: CustomSvgImage(path: AppImages.storeSvg), 
          activeIcon: CustomSvgImage(path: AppImages.storeSvg,color: AppColors.primaryColor,),
          label: "Shop"),
          BottomNavigationBarItem(
            icon:CustomSvgImage(path: AppImages.exploreSvg),
            activeIcon: CustomSvgImage(path: AppImages.exploreSvg,color: AppColors.primaryColor,),
             label: "Explore"),
          BottomNavigationBarItem(
          icon: CustomSvgImage(path: AppImages.cartSvg,),
           activeIcon: CustomSvgImage(path: AppImages.cartSvg,color: AppColors.primaryColor,),
           label: "Cart"),
           BottomNavigationBarItem(
            icon:CustomSvgImage(path: AppImages.heartSvg) , 
            activeIcon: CustomSvgImage(path: AppImages.heartSvg,color: AppColors.primaryColor,),
            label: "Favourite"),
          BottomNavigationBarItem(
            icon: CustomSvgImage(path: AppImages.userSvg,),
            activeIcon: CustomSvgImage(path: AppImages.userSvg,color: AppColors.primaryColor,),
             label: "Account"),
        ],
      ),
    );
  }
}
