import 'dart:ffi';
import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
    CustomTextFormField({Key? key, this.icon, this.textInputType, this.tile,  this.controller,  this.obscureText,}) : super(key: key);
 final IconData? icon;
 String? tile;
final TextInputType? textInputType;
final TextEditingController? controller;
final bool? obscureText;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText!,

      keyboardType: textInputType,
      decoration: InputDecoration(
        label:    Text(tile!),
         border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15)
      )   ,
        prefixIcon:Icon(icon)
      ),
    );
  }
}
