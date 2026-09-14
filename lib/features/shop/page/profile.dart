import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/constants/appimages.dart';
import 'package:green_mart/core/styles/appcolor.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_image.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              // 1. Profile Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(AppImages.profile), 
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Mostafa Osama',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8),
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.edit_outlined,
                                  size: 20,
                                  color: Color(0xFF53B175),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Mostafa@gmail.com',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(8),
              const Divider(thickness: 1, color: Color(0xFFE2E2E2)),

              // 2. Menu Items
              _buildMenuItem(
                icon:  CustomSvgImage(path: AppImages.orderSvg,width: 20,height: 20),
                title: 'Orders',
                onTap: () {},
              ),
Gap(8),
              _buildMenuItem(
                icon:  CustomSvgImage(path: AppImages.detailsSvg,width: 20,height: 20),
                title: 'My Details',
                onTap: () {},
              ),
              Gap(8),
              _buildMenuItem(
                icon: CustomSvgImage(path: AppImages.addressSvg,width: 20,height: 20),
                title: 'Delivery Address',
                onTap: () {},
              ),
              Gap(8),
              _buildMenuItem(
                icon:  CustomSvgImage(path: AppImages.paymentSvg,width: 20,height: 20),
                title: 'Payment Methods',
                onTap: () {},
              ),
              Gap(8),
              _buildMenuItem(
                icon:  CustomSvgImage(path: AppImages.promocodeSvg,width: 20,height: 20),
                title: 'Promo Cord',
                onTap: () {},
              ),
              Gap(8),
              _buildMenuItem(
                icon:  CustomSvgImage(path: AppImages.bellSvg,width: 20,height: 20),
                title: 'Notifications',
                onTap: () {},
              ),
              Gap(8),
              _buildMenuItem(
                icon:  CustomSvgImage(path: AppImages.helpSvg,width: 20,height: 20),
                title: 'Help',
                onTap: () {},
              ),
              Gap(8),
              _buildMenuItem(
                icon: CustomSvgImage(path: AppImages.aboutSvg,width: 20,height: 20,),
                title: 'About',
                onTap: () {},
              ),

              Gap(40),

              // 3. Log Out Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF2F3F2),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout,
                          color: Color(0xFF53B175),
                        ),
                        Gap(15),
                        Text(
                          'Log Out',
                          style: TextStyle(
                            color: Color(0xFF53B175),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             
            ],
          ),
        ),
      ),

      
     
    );
  }

  // Custom Widget for menu items
  Widget _buildMenuItem({
    required Widget icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
          leading: icon,
          title: Text(
            title,
            style: TextStyles.headline1.copyWith(
              color: AppColors.blackColor,
              fontSize: 20,
              fontWeight: .w700,
            )
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Colors.black,
          ),
          onTap: onTap,
        ),
        const Divider(
          height: 1,
          thickness: 1,
          indent: 25,
          endIndent: 25,
          color: Color(0xFFE2E2E2),
        ),
      ],
    );
  }
}