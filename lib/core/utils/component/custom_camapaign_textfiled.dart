import 'package:flutter/material.dart';

import '../app_color.dart';
import '../app_style.dart';
import '../helper.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled(
      {super.key,
      this.icon,
      required this.hint,
      required this.maxLine,
      required this.labelText,
      this.textEditingController,
      this.textInputType,
      this.validator,
      this.onTap
      });

  final String hint;
  final String labelText;
  final Widget? icon;
  final int maxLine;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
  final String? Function(String? value)? validator;
  final void Function()? onTap;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap ,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: textInputType,
      controller: textEditingController,
      decoration: InputDecoration(

        fillColor: AppColor.whiteColor.withOpacity(0.30000001192092896),
          filled: true,
          border: Helper.buildOutlineInputBorder(),

          enabledBorder: Helper.buildOutlineInputBorder(),
          disabledBorder: Helper.buildOutlineInputBorder(),
          hintText: hint,
          hintStyle: AppStyle.style13Regular(context),
          prefixIcon: icon),
      maxLines: maxLine,
    );
  }
}
