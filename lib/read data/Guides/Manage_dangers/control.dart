import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/control2.dart';
// import 'package:safe_driving101/read%20data/Guides/Traffic_Infraction/control2.dart';

class Control extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Vehicle Loss of Control',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 18,
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 23),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),

              Text(
                'Drivers may encounter emergencies that require them to act quickly and effectively, and one of the most dangerous situations is when the vehicle\'s tires lose traction on the road, causing the driver to lose control of the vehicle. In such situations, the driver needs to respond promptly and appropriately to avoid accidents and ensure the safety of themselves and others on the road.',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),

              SizedBox(height: 30,),

              Center(
                child: Image.asset(
                  'images/loss of control.jpg',
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,

                ),
              ),

              SizedBox(height: 130,),
              Center(
                child: Container(
                  width: 320,
                  height: 50,
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
                      primary:
                      Color(0xfc161853), // Set the background color of the button
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Control2()),);
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) {
                            return Control2();
                          },
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            // Use SharedAxisTransition for the transition animation
                            return SharedAxisTransition(
                              animation: animation,
                              transitionType: SharedAxisTransitionType.horizontal, // Choose the desired transition type
                              secondaryAnimation: secondaryAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
