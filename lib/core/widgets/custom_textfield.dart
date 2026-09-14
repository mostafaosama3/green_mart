import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/styles/appcolor.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class const CustomTextfield({
    super.key, this.title, required this.hintText, this.prefixicon,
  }) extends StatelessWidget {
  final String? title;
  final String hintText;
  final Icon? prefixicon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        if(title!=null)...[
        Text(title!,style: TextStyles.body.copyWith(fontWeight: .w600)),
        Gap(8),],
        TextFormField(
         decoration: InputDecoration(
          prefixIcon: prefixicon,
       hintText: hintText,
        ),
        
         ),
        
      ],
    );
  }
}