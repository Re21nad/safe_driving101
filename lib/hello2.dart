import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'hello4.dart';
// import 'log-in.dart';

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: hallo2()));
// }

class Hello2 extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Hello4();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(25.5, 45, 26.5, 40.5),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(1, 30, 0, 50),
                  constraints: BoxConstraints(
                    maxWidth: 254,
                  ),
                  child: Text(
                    'SAFE DRIVING\n 101',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 27,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Container(
                // image1RSd (1:63)
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                width: 173,
                height: 173,
                child: Image.asset(
                  'images/image-1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(1, 100, 0, 50),
                  constraints: BoxConstraints(
                    maxWidth: 300,
                  ),
                  child: Text(
                    'Take an adaptive test to keep\ntracking your improvement',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rokkitt(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      height: 1.1375,
                      letterSpacing: -0.5600000668,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Container(
                // circlesvXF (1:41)
                margin: EdgeInsets.fromLTRB(125, 15, 20.5, 30),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // ellipse1Ryo (1:42)
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.5),
                        color: Color(0xffd9d9d9),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      // ellipse1Ryo (1:42)
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.5),
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      // ellipse1Ryo (1:42)
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.5),
                        color: Color(0xffd9d9d9),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      // ellipse1Ryo (1:42)
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.5),
                        color: Color(0xffd9d9d9),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),

                  ],
                ),
              ),
              SizedBox(
                width: 350,
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
                    navigateNextPage(context);
                  },
                ),
              ),
              Container(
                // skipfHo (1:48)
                margin: EdgeInsets.fromLTRB(281, 20, 0, 0),
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => LoginScreen()));
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
            ],
          ),
        ),
      ),
    );

    //);
  }
}
