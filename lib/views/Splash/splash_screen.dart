import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';
import 'package:moovbe/views/widgets/bottom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPinkColor,
      body: SafeArea(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Padding(
            padding: EdgeInsets.only(
              right: 0.07 * screenWidth,
              left: 0.07 * screenWidth,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                SizedBox(
                  width: 0.4 * screenWidth,
                  height: 0.15 * screenHeight,
                  child: Image.asset('assets/images/logo_spash.png'),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomButton(
                    backgroundColor: kWhiteColor,
                    textColor: kPinkColor,
                    onpress: () {}, buttonText: 'Get Started',
                  ),
                ),
                SizedBox(
                  height: 0.05 * screenHeight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
