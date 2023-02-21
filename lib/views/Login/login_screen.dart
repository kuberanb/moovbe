import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';
import 'package:moovbe/views/widgets/bottom_button.dart';
import 'package:moovbe/views/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static final formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: 0.3 * screenHeight,
              color: kAppBarBlackColor,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      'assets/images/Polygon.png',
                      width: 0.8 * screenWidth,
                      height: 0.45 * screenHeight,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 0.07 * screenWidth,
                      left: 0.07 * screenWidth,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.13 * screenHeight,
                        ),
                        const Text(
                          'Welcome',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 0.01 * screenHeight,
                        ),
                        const Text(
                          'Manage your Bus and Drivers',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.06 * screenHeight,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 0.035 * screenHeight,
                left: 0.035 * screenHeight,
              ),
              child: SizedBox(
                width: screenWidth,
                height: 0.6 * screenHeight,
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        hintText: 'Enter Username',
                        validatorFunction: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter userName';
                          }
                          return null;
                        },
                        controller: userNameController,
                      ),
                      SizedBox(
                        height: 0.02 * screenHeight,
                      ),
                      CustomTextFormField(
                        hintText: 'Enter Password',
                        validatorFunction: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        controller: passwordController,
                        obscureText: true,
                      ),
                      const Spacer(),
                      BottomButton(
                        backgroundColor: kPinkColor,
                        textColor: kWhiteColor,
                        onpress: () {
                          if (formKey.currentState!.validate()) {
                            log('sucess');
                          }
                          log('not sucess');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
