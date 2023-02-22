import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';
import 'package:moovbe/views/Bus%20Detail/widgets/bus_list_tile.dart';
import 'package:moovbe/views/Bus%20Detail/widgets/top_widget.dart';

class BusListHomeScreen extends StatelessWidget {
  const BusListHomeScreen({super.key});

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
          title: Column(
            children: [
              Image.asset(
                'assets/images/logo_spash.png',
                width: 0.4 * screenWidth,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: 0.02 * screenHeight,
            left: 0.02 * screenHeight,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 0.02 * screenHeight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TopWidget(
                    title: 'Bus',
                    subtitle: 'Manage Your Bus',
                    backgroundColor: kPinkColor,
                    pressFunction: () {},
                    imageUrl: 'assets/images/bus_yellow.png',
                  ),
                  TopWidget(
                    backgroundColor: kAppBarBlackColor,
                    title: 'Driver',
                    pressFunction: () {},
                    subtitle: 'Manage Your Driver ',
                    imageUrl: 'assets/images/bus_captain.png',
                  ),
                ],
              ),
              SizedBox(
                height: 0.02 * screenHeight,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '21 Buses Found',
                  style: TextStyle(
                    color: kLightBlackColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 0.02 * screenHeight,
              ),

              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) => BusListTile(
                      busSubTitle: 'Swift Scania P series',
                      busTitle: 'KSRTC',
                    )),
                separatorBuilder: ((context, index) => SizedBox(
                      height: 0.02 * screenHeight,
                    )),
                itemCount: 8,
              ),

              // BusListTile(busSubTitle: 'Swift Scania P series', busTitle: 'KSRTC',),
            ],
          ),
        ),
      ),
    );
  }
}
