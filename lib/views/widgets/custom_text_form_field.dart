import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key, required this.hintText, required this.validatorFunction,required this.controller,this.obscureText = false});

  String hintText;
  String? Function(String?) validatorFunction;
  TextEditingController controller;
  bool obscureText;


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return TextFormField(
      
      obscureText: obscureText,
        controller: controller,
        style: const TextStyle(color: kBlackColor), 
        decoration: InputDecoration(
          errorStyle: const TextStyle(
            color: kPinkColor,
          ),
          fillColor: kLightGreyColor,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: kLoginHintColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: kLightGreyColor,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: const BorderSide(
              color: kLightGreyColor,
              width: 2.0,
            ),
          ),
        ),
        validator: validatorFunction

        // (value) {
        //   if (value!.isEmpty) {
        //     return 'Please enter Name';
        //   }
        //   return null;
        // },

        );
  }
}
