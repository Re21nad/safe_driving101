import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManualTrans extends StatefulWidget {
  const ManualTrans({Key? key}) : super(key: key);

  @override
  State<ManualTrans> createState() => _ManualTransState();
}

class _ManualTransState extends State<ManualTrans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Transmission Types',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 19,
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
                'Manual Transmission',
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
                'A manual transmission is one that requires the driver of the vehicle to shift gears in order to provide the appropriate torque to the vehicle. Despite being one of the oldest types of transmissions, it is still used in many vehicles today, even after decades of technological advancements in the automotive industry. To operate a manual transmission, the driver must move the transmission stick to install the appropriate gear for the vehicle\'s torque and speed, and also use an additional pedal to shift between gears. A standard manual transmission typically consists of five forward gears, as well as neutral and reverse modes.',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),

              SizedBox(height: 5,),

              Center(
                child: Image.asset(
                  'images/manual_tran.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                  // alignment: Alignment.center,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
