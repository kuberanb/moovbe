import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:moovbe/functions/miscellaneous_functions.dart';
import 'package:moovbe/models/login_response.dart';
import 'package:moovbe/services/api_endpoints.dart';

class ApiService {
  static Future<LoginResponse?> loginFunction(
      BuildContext context, String username, String password) async {
    try {
      var res = await http.post(
          Uri.parse('${ApiEndPoints.baseUrl + ApiEndPoints.loginApi}'),
          body: {"username": username, "password": password});

      if (res.statusCode == 200 || res.statusCode == 201) {
        LoginResponse? loginresponse =
            LoginResponse.fromJson(json.decode(res.body));

        return loginresponse;
      }
      //  else {
      //   errorSnackBar('username and password mismatch', context);
      // }
    } on SocketException catch (e) {
      errorSnackBar(e.toString(), context);
    } on Error catch (e) {
      errorSnackBar(e.toString(), context);
    }
    return null;
  }
}
