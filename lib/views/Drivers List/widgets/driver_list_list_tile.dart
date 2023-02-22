
import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';

class DriverListListTile extends StatelessWidget {
   DriverListListTile({super.key,required this.personName,required this.personLicenseNo});

  String personName;
  String personLicenseNo;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ListTile(
      onTap: () {},
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(width: 1, color: kLightGreyColor)),
      title: Text(
        //'KSRTC'
        personName,
        style: const TextStyle(
          color: kListTileTextColor,
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        //'Swift Scania P series'
        personLicenseNo,
        style: const TextStyle(
          color: kListTileTextColor,
          fontSize: 19,
        ),
      ),
      leading: CircleAvatar(
        backgroundColor: kLightGreyColor,
        radius: 0.08*screenWidth,   
        child: Image.asset(
          'assets/images/female_face.png', 
        ),
      ),
      trailing: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle( 
          backgroundColor: MaterialStateProperty.all(kPinkColor),
        ),
        child: const Text(
          'Delete',
          style: TextStyle(
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}