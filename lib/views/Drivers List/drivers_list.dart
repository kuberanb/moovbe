import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';
import 'package:moovbe/views/Drivers%20List/widgets/driver_list_list_tile.dart';
import 'package:moovbe/views/widgets/bottom_button.dart';

class DriversList extends StatelessWidget {
  const DriversList({super.key});

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
            'Driver List',
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
            right: 0.02 * screenWidth,
            left: 0.02 * screenWidth,
          ),
          child: SizedBox(
            height: 0.85 * screenHeight,
            width: screenWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.02 * screenHeight,
                ),
                const Text(
                  '21 Drivers Found',
                  style: TextStyle(
                    color: kLightBlackColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 0.02 * screenHeight,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) => DriverListListTile(
                        personName: 'Rohit Sharma',
                        personLicenseNo: 'Licen no: PJ515789',
                      )),
                  separatorBuilder: ((context, index) => SizedBox(
                        height: 0.02 * screenHeight,
                      )),
                  itemCount: 5,
                ),
                const Spacer(),
                BottomButton(
                  backgroundColor: kPinkColor,
                  textColor: kWhiteColor,
                  onpress: () {},
                  buttonText: 'Add Driver',
                ),
                // SizedBox(
                //   height: 0.15 * screenHeight,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
