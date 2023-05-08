import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/Guides/Choose_car/automatic.dart';
import 'package:safe_driving101/read%20data/Guides/Choose_car/manual.dart';

class ChooseCar extends StatefulWidget {
  const ChooseCar({Key? key}) : super(key: key);

  @override
  State<ChooseCar> createState() => _ChooseCarState();
}

class _ChooseCarState extends State<ChooseCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Choose a Car',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 25,
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
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: 23),
            //   width: double.infinity,
            //   //color: Colors.blue, // Adding a background color for the container
            //   child:
              Text(
                'Clear the road',
                style: GoogleFonts.domine(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                textAlign: TextAlign.left, // Centering the text within the container
              ),
            SizedBox(height: 15,),

            Text(
              'Clear the road in front of and behind the vehicle before getting out, using the front and rear windows and mirrors. Blind spots, which are areas at the back of the vehicle on the left and right, are a common source of accidents; thus, you should always occasionally rely on your side mirrors while driving. To get around this issue, you must turn your head slightly backward while making left and right turns until the area that is blind is free of vehicles and people.',
              style: GoogleFonts.rokkitt(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.left, // Centering the text within the container
            ),

            SizedBox(height: 30,),
            Text(
              'Proper use of the accelerator pedal',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.left, // Centering the text within the container
            ),

            SizedBox(height: 15,),
            Text(
              'The vehicle is moved by the accelerator pedal, so to restart it after stopping, you must first depress the brake pedal, shift the transmission from position P to position D, and then gently press the accelerator pedal until the vehicle speed increases.',
              style: GoogleFonts.rokkitt(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.left, // Centering the text within the container
            ),

            SizedBox(height: 30,),
            Text(
              'Use the transmission',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.left, // Centering the text within the container
            ),

            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Automatic()));
                    },
                    style: ElevatedButton.styleFrom(
                      //padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                      primary: Color(0xfcc4eaf6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child:
                    Container(
                      // choosingacarnuB (1:76)
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Text(
                        'Automatic',
                        style: GoogleFonts.domine(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(width: 20,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Manual()));
                    },
                    style: ElevatedButton.styleFrom(
                      //padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                      primary: Color(0xfcc4eaf6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child:
                    Container(
                      // choosingacarnuB (1:76)
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Text(
                        'Manual',
                        style: GoogleFonts.domine(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),

                  ),
                ],
              ),
            ),


            SizedBox(height: 30,),
            Text(
              'Vehicle control',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.left, // Centering the text within the container
            ),

            SizedBox(height: 15,),
            Text(
              'There are two ways to reduce the vehicle\'s speed after it has started moving along the road:',
              style: GoogleFonts.rokkitt(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.left, // Centering the text within the container
            ),
            SizedBox(height: 15,),
            Text(
              'The most typical way to manage a car\'s speed is manually, by using the tactile input provided by the accelerator pedal and the car itself. The driver can use the accelerator pedal to speed up and attain the target speed if the vehicle\'s speed drops and the brakes to slow down if necessary.',
              style: GoogleFonts.rokkitt(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.left, // Centering the text within the container
            ),
            SizedBox(height: 15,),
            Text(
              'The second method of controlling vehicle speed is automatic and involves the use of cruise control. This technique is commonly used on highways and other open roads with low traffic density. Once the driver sets the desired speed, the vehicle\'s computer takes control to maintain the speed, freeing the driver from the task of manually adjusting the accelerator. To disengage the cruise control system, the driver can simply press or apply pressure to any of the accelerator or brake pedals. This method is popular for its fuel efficiency and provides a comfortable driving experience for both the driver and the vehicle\'s engine.',
              style: GoogleFonts.rokkitt(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.left, // Centering the text within the container
            ),
            SizedBox(height: 30,),
            Text(
              'Make sure the shoulder of the road',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.left, // Centering the text within the container
            ),

            SizedBox(height: 15,),
            Text(
              'We frequently see automobiles traveling faster than the speed limit on the side of the road, endangering the lives of several vehicle drivers and other road users. The shoulder of the road is the fastest corridor via which emergency vehicles can pass to save accident victims or transfer important cases.',
              style: GoogleFonts.rokkitt(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.left, // Centering the text within the container
            ),

            SizedBox(
              height: 20,
            ),
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
