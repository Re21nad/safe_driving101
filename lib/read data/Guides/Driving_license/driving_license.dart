import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:safe_driving101/read%20data/Guides/Driving_license/heavy_equipment.dart';
import 'package:safe_driving101/read%20data/Guides/Driving_license/motorcycle_license.dart';
import 'package:safe_driving101/read%20data/Guides/Driving_license/private_license.dart';
import 'package:safe_driving101/read%20data/Guides/Driving_license/public_license.dart';
import 'package:safe_driving101/read%20data/Guides/Driving_license/temporary_license.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Driving_license extends StatefulWidget {
  const Driving_license({Key? key}) : super(key: key);

  @override
  State<Driving_license> createState() => _Driving_licenseState();
}

class _Driving_licenseState extends State<Driving_license> {
  PageController _controller = PageController();
  bool onLastPage = false;

  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Driving License',
          textAlign: TextAlign.center,
          style: GoogleFonts.domine(
            fontSize: 23,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.7000000834,
            color: Color(0xff000000),
          ),
        ),

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: Colors.indigo[100],
        height: 300,
        backgroundColor: Color(0xfc161853),
        animSpeedFactor: 3,
        showChildOpacityTransition: true,
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 3);
                });
              },
              children: [
                PrivateLicense(),
                PublicLicense(),
                MotorcycleLicense(),
                Heavy_Equ_License(),
                TempoLicense(),
              ],
            ),
            Container(
              alignment: Alignment(0, 0.5),
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 580,
                  ),
                  SmoothPageIndicator(controller: _controller, count: 5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
