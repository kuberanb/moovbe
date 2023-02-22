import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';

class BottomButton extends StatelessWidget {
   BottomButton({super.key,required this.backgroundColor,required this.textColor,required this.onpress,required this.buttonText});

  Color backgroundColor;
  Color textColor;
  VoidCallback onpress;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onpress,
      child: Container(
        width: screenWidth,
        height: 0.06 * screenHeight,
        // color: kWhiteColor,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Center(
          child: Text(
           // 'Get Started'
            buttonText,
            style: TextStyle(
              color: textColor,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
