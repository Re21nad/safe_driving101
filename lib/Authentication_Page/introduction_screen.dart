import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/Authentication_Page/auth.dart';
import 'package:safe_driving101/Authentication_Page/hello1.dart';
import 'package:safe_driving101/Authentication_Page/hello2.dart';
import 'package:safe_driving101/Authentication_Page/hello4.dart';
import 'package:safe_driving101/Authentication_Page/hello5.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(Introduction());
}

class Introduction extends StatefulWidget {
  //const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: [
              Hello1(),
              Hello2(),
              Hello4(),
              Hello5(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.5),
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 580,),
                // Container(
                //   // skipfHo (1:48)
                //   margin: EdgeInsets.fromLTRB(281, 20, 0, 0),
                //   child: TextButton(
                //     onPressed: () {
                //       _controller.jumpToPage(3);
                //     },
                //     style: TextButton.styleFrom(
                //         padding: EdgeInsets.zero,
                //         foregroundColor: Color(0xfc161853)),
                //     child: Text(
                //       'Skip',
                //       style: GoogleFonts.rokkitt(
                //         fontSize: 18,
                //         fontWeight: FontWeight.w400,
                //         height: 1.1375,
                //         color: Color(0xff686a66),
                //       ),
                //     ),
                //   ),
                // ),



                // GestureDetector(
                //     onTap: () {
                //       _controller.jumpToPage(3);
                //     },
                //     child: Text('Skip')),
                SmoothPageIndicator(controller: _controller, count: 4),

                SizedBox(height: 36,),
                onLastPage
                    ? SizedBox(
                  width: 350,
                  height: 65,
                  child: ElevatedButton(
                    child: Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rokkitt(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        height: 1.1375,
                        color: Color(0xffffffff),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Adjust border radius as per your need
                      ),
                      primary: Color(
                          0xfc161853), // Set the background color of the button
                    ),
                    onPressed: () {
                      Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Auth();
                            }));
                    },
                  ),
                )

                // GestureDetector(
                //         onTap: () {
                //           Navigator.push(context,
                //               MaterialPageRoute(builder: (context) {
                //             return LoginScreen();
                //           }));
                //         },
                //         child: Text('Done'))
                    : SizedBox(
                        width: double.infinity,
                        height: 65,
                        child: ElevatedButton(
                          child: Text(
                            'Next',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.rokkitt(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              height: 1.1375,
                              color: Color(0xffffffff),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20), // Adjust border radius as per your need
                            ),
                            primary: Color(
                                0xfc161853), // Set the background color of the button
                          ),
                          onPressed: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeIn);
                          },
                        ),
                      ),

                SizedBox(height: 10,),
                Container(
                  // skipfHo (1:48)
                  margin: EdgeInsets.fromLTRB(281, 20, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      _controller.jumpToPage(3);
                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        foregroundColor: Color(0xfc161853)),
                    child: Text(
                      'Skip',
                      style: GoogleFonts.rokkitt(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        height: 1.1375,
                        color: Color(0xff686a66),
                      ),
                    ),
                  ),
                ),

                // GestureDetector(
                //         onTap: () {
                //           _controller.nextPage(
                //               duration: Duration(microseconds: 500),
                //               curve: Curves.easeIn);
                //         },
                //         child: Text('Next')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
