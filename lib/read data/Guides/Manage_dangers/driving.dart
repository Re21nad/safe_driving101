import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/Different_conditions/driving1.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/Different_conditions/driving2.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/Different_conditions/driving3.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/Different_conditions/driving4.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/Different_conditions/driving5.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/Different_conditions/driving6.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/Different_conditions/driving7.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Driving extends StatefulWidget {
  const Driving({Key? key}) : super(key: key);

  @override
  State<Driving> createState() => _DrivingState();
}

class _DrivingState extends State<Driving> {


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
          'Driving in Different Conditions',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 15,
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
                Driving1(),
                Driving2(),
                Driving3(),
                Driving4(),
                Driving5(),
                Driving6(),
                Driving7(),
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
                  SmoothPageIndicator(controller: _controller, count: 7),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
