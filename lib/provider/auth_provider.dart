import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';
import 'package:moovbe/models/login_response.dart';
import 'package:moovbe/services/api_service.dart';
import 'package:moovbe/views/Bus%20Detail/bus_detail_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  // bool _isLoading = false;

  // void setLoading(bool value) {
  //   _isLoading = value;
  // }

  // bool getLoading() {
  //   return _isLoading;

  void userLogin(String username, String password, context) {
    
   ChangeNotifier();
    ApiService.loginFunction(context, username, password).then(
      (value) async {
        
       if (value!=null) {
          final sharepreferances = await SharedPreferences.getInstance();
          await sharepreferances.setString('apiKey', value.urlId);
          await sharepreferances.setString('acessToken', value.access);
          log(value.urlId.toString());
          log(value.access.toString());
          log(value.toString());

          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: ((context) => const BusDetailScreen()),
              ),
              (route) => false);
       }
      },
    );
    ChangeNotifier();
  }
}
