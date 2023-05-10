import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class emergencyEquipment extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Emergency Equipment',
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
                'In the event of an emergency accident while you are driving, you and anyone else in the vehicle may sustain physical injuries that require first aid, or the vehicle may break down due to a flat tire. To prepare for these and other unforeseen circumstances, the driver should keep the following tools and equipment in the vehicle:',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),

              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 400,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/1.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Text(
                      'It includes a set of important \nmedical items that you may\nneed in an emergency.',
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
                ),
              ),

              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/2.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Text(
                      'It helps you control any \ncombustion in the vehicle or \non the road so that you can \navoid it before it turns \ninto a real disaster.',
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
                ),
              ),

              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/3.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Text(
                      'Among the equipment that \nyou may need on the road, \nincluding: a gauge \nscrewdriver (40), an air \nwrench, and a plug to stop\nthe leakage.',
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
                ),
              ),

              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/4.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Text(
                      'Through it, the air pressure \nin the tires can be checked \nregularly to increase its \nlife, reduce the risk of \nexplosion, and reduce fuel \nconsumption.',
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
                ),
              ),

              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/5.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Text(
                      'An additional tire is in the \ntrunk of the car and is used\nwhen one of the main\ntires is damaged',
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
                ),
              ),

              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/6.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Text(
                      'You might be exposed \nwhile filling the tires with \nair, in which case you might \nneed lighting to assist with \nthe air pump connection.',
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
                ),
              ),

              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/7.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Text(
                      'So that the driver of the \nvehicle, after coming to a \nsafe stop far from the \nmotion of other vehicles, can \nset him on the road behind \nthe vehicle, to signal other \nvehicles or ask for help.',
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
