import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';
import 'package:moovbe/views/widgets/bottom_button.dart';
import 'package:moovbe/views/widgets/custom_text_form_field.dart';

class AddDriver extends StatelessWidget {
  AddDriver({super.key});

  final nameController = TextEditingController();
  final licenseNoController = TextEditingController();
  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          0.1 * screenHeight,
        ),
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: kAppBarBlackColor,
          title: const Text(
            'Add Driver',
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 17,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: kWhiteColor,
              size: 25,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: 0.07 * screenWidth,
            left: 0.07 * screenWidth,  
          ),
          child: SizedBox(
            height: 0.83*screenHeight,   
            width: screenWidth, 
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 0.02 * screenHeight,
                  ),
                  CustomTextFormField(
                    hintText: 'Enter Name',
                    validatorFunction: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Name'; 
                      }
                      return null;
                    },
                    controller: nameController,
                  ),
                  SizedBox(
                    height: 0.02 * screenHeight,
                  ),
                  CustomTextFormField(hintText: 'Enter License Number', validatorFunction: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter License Number';
                      }
                      return null;
                    }, controller: licenseNoController
                  ),
                  const Spacer(),
                  BottomButton(backgroundColor: kPinkColor, textColor: kWhiteColor, onpress: (){
                    if(formKey.currentState!.validate()){
                      log('sucess');
                    }else{
                      log('not sucess');
                    }
            
                  }, buttonText: 'Save'),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
