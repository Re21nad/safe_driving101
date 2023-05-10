import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Control2 extends StatefulWidget {
  const Control2({Key? key}) : super(key: key);

  @override
  State<Control2> createState() => _Control2State();
}

class _Control2State extends State<Control2> {
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
              SizedBox(height: 30,),
              Text(
                'When a driver senses that their vehicle is losing control and sliding in a certain direction, they need to take immediate action to regain control of the vehicle and prevent accidents. The following are some steps that the driver should take:',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Text(
                      '1- Keep calm and avoid overreacting: Panic can lead to oversteering or applying the brakes too hard, which can worsen the situation.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.rokkitt(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.14,
                        letterSpacing: -0.7000000834,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '2- Release the gas pedal: This will reduce the speed of the vehicle and help to regain control.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.rokkitt(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.14,
                        letterSpacing: -0.7000000834,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '3- Steer in the direction of the slide: If the vehicle is sliding to the left, steer to the left, and if it\'s sliding to the right, steer to the right. This will help to straighten the vehicle\'s trajectory.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.rokkitt(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.14,
                        letterSpacing: -0.7000000834,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '4- Do not apply the brakes suddenly: This can cause the wheels to lock, making it more difficult to regain control. Instead, apply the brakes gently and gradually to slow down the vehicle.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.rokkitt(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.14,
                        letterSpacing: -0.7000000834,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '5- Wait for the vehicle to regain traction: Once the vehicle is moving in the right direction, gradually increase the speed and resume normal driving.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.rokkitt(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.14,
                        letterSpacing: -0.7000000834,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                )
              ),


              SizedBox(height: 20,),
              Text(
                'By following these steps, the driver can effectively handle a situation where the vehicle is losing control and prevent accidents on the road.',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),

              SizedBox(height: 20,),
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
                      //   MaterialPageRoute(builder: (context) => Skill()),);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
