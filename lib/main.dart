import 'package:flutter/material.dart';
import 'package:moovbe/provider/auth_provider.dart';
import 'package:moovbe/views/Bus%20Detail/bus_detail_screen.dart';
import 'package:moovbe/views/Bus%20Detail/bus_list_home_screen.dart';
import 'package:moovbe/views/Driver%20Management/add_driver.dart';
import 'package:moovbe/views/Drivers%20List/drivers_list.dart';
import 'package:moovbe/views/Login/login_screen.dart';
import 'package:moovbe/views/Splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => AuthProvider()),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
