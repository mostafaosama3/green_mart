import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/appimages.dart';
import 'package:green_mart/core/styles/appcolor.dart';
import 'package:green_mart/core/widgets/custom_svg_image.dart';
import 'package:green_mart/core/widgets/custom_textfield.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomSvgImage(
          path: AppImages.logoSvg,
          color: AppColors.primaryColor,
          height: 50,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
        CustomTextfield(prefixicon: Icon(Icons.search,color: AppColors.greyColor,), hintText: 'Search Store',),
          ],
        ),
      ),
      );
  }
}
