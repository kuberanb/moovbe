import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';

class TopWidget extends StatelessWidget {
  TopWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    required this.pressFunction,
    required this.imageUrl,
  });

  String title;
  String subtitle;
  Color backgroundColor;
  VoidCallback pressFunction;
  String imageUrl;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: pressFunction,
      child: Container(
        width: 0.43 * screenWidth,
        height: 0.25 * screenHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor, 
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.02 * screenHeight,
                ),
                Text(
                  //'Bus'
                  title,
                  style: const TextStyle(
                    color: kWhiteColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  //'Manage Your Bus'
                  subtitle,
                  style: const TextStyle(
                    color: kWhiteColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 0.02 * screenHeight,
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  //'assets/images/bus_yellow.png'
                  imageUrl,
                ),
              ),
            ),
            SizedBox(
              height: 0.01 * screenHeight,
            ),
          ],
        ),
      ),
    );
  }
}
