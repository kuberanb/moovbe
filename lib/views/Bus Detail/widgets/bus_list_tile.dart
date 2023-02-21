import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';

class BusListTile extends StatelessWidget {
  BusListTile({super.key, required this.busTitle,required this.busSubTitle});

  String busTitle;
  String busSubTitle;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ListTile(
      onTap: () {},
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(width: 1, color: kLightGreyColor)),
      title: Text(
        //'KSRTC'
        busTitle,
        style: const TextStyle(
          color: kAppBarBlackColor,
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        //'Swift Scania P series'
        busSubTitle,
        style: const TextStyle(
          color: kAppBarBlackColor,
          fontSize: 19,
        ),
      ),
      leading: Image.asset(
        'assets/images/bus_white.png',
      ),
      trailing: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kPinkColor),
        ),
        child: const Text(
          'Manage',
          style: TextStyle(
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
