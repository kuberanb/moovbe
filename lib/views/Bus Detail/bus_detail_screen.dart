import 'package:flutter/material.dart';
import 'package:moovbe/core/colors.dart';

class BusDetailScreen extends StatelessWidget {
  const BusDetailScreen({super.key});

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
            'KSRTC Swift Scania P-series',
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

          // Column(
          //   children: [
          //     Image.asset(
          //       'assets/images/logo_spash.png',
          //       width: 0.4 * screenWidth,
          //     ),
          //   ],
          // ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: 0.03 * screenHeight,
            left: 0.03 * screenHeight,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 0.02 * screenHeight,
              ),
              Container(
                width: screenWidth,
                height: 0.2 * screenHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kAppBarBlackColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Rohit Sharma',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 0.01 * screenHeight,
                        ),
                        const Text(
                          'License no: PJ551916543',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/bus_captain.png')
                  ],
                ),
              ),
              SizedBox(
                height: 0.02 * screenHeight,
              ),
              Container(
                height: 0.6 * screenHeight,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: kLightGreyColor,
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/Seat_black.png',
                        width: 0.15 * screenWidth,
                      ),
                    ),

                    Expanded(
                      child: ListView.separated(
                        itemBuilder: ((context, index) =>
                            const SeatEachEachRow()),
                        separatorBuilder: ((context, index) => SizedBox(
                              height: 0.01 * screenHeight,
                            )),
                        itemCount: 8,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                      ),
                    ),

                    //  SeatEachEachRow()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SeatEachEachRow extends StatelessWidget {
  const SeatEachEachRow({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/Seat_pink.png',
              width: 0.15 * screenWidth,
            ),
            // SizedBox(
            //   width: 0.01 * screenWidth,
            // ),
            Image.asset(
              'assets/images/Seat_pink.png',
              width: 0.15 * screenWidth,
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/Seat_pink.png',
              width: 0.15 * screenWidth,
            ),
            // SizedBox(
            //   width: 0.01 * screenWidth,
            // ),
            Image.asset(
              'assets/images/Seat_pink.png',
              width: 0.15 * screenWidth,
            ),
          ],
        ),
      ],
    );
  }
}
