import 'package:flutter/material.dart';
import 'package:green_mart/core/utils/appcolor.dart';

class const MainButton({
    super.key, required this.title, required this.ontap,
  }) extends StatelessWidget {
  final String title;
  final Function ()ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: ontap, child: Text(title,style: TextStyle(color: AppColors.accentColor,fontSize: 20,fontWeight: .bold),),
    
    style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.primaryColor,
    minimumSize:  const Size(double.infinity, 50),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadiusGeometry.circular(10),
    ),
    ),
    
      );
  }
}