

import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';

errorSnackBar(String? text, BuildContext context) {
  if (text == null) return;

  final snackBar = SnackBar(
   // backgroundColor: kListTileColor,
   backgroundColor: kPinkColor,
   margin: const EdgeInsets.all(20),
  behavior: SnackBarBehavior.floating,

    duration: const Duration(
      seconds: 2,
    ),
    content: Text(
      text,
      style: const TextStyle(
        color: kWhiteColor,
        fontSize: 18,
      ),
    ),
  );

  //  messengerKey.currentState!
  //   ..removeCurrentSnackBar()
  //   ..showSnackBar(snackBar);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
