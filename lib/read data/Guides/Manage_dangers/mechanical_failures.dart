
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/Mechanical/mechanicalView.dart';

class mechanicalFailure extends StatefulWidget {
  const mechanicalFailure({Key? key}) : super(key: key);

  @override
  State<mechanicalFailure> createState() => _mechanicalFailureState();
}

class _mechanicalFailureState extends State<mechanicalFailure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Mechanical Failures',
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
            children: [
              SizedBox(height: 30,),
              Text(
                'Vehicle drivers may be at risk from mechanical failures. The most common problems are:',
                style: GoogleFonts.domine(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 30,),

          ExpandablePageView(
            children: [
              MechanicalView(
                title: 'Disable the throttle',
                description: ' - Put the transmission in (N) for automatic transmission vehicles and Neutral for manual transmission vehicles\n - Then apply the brakes\n - Then carefully move away from the road\n - Then turn off the engine',
                color: Colors.grey.shade100,
              ),
              MechanicalView(
                title: 'fluid leakage',
                description: 'Put the transmission in (N) for automatic transmission vehicles and Neutral for manual transmission vehicles\nIn most vehicles, six types of fluids are used, the leakage of which can cause stains:\n 1- Differential Fluid\n 2- Brake Fluid\n 3- Power Steering Fluid\n 4- Automatic or Standard Transmission Fluid\n 5- Engine Oil\n 6- Coolant',
                color: Colors.pinkAccent,
              ),
              MechanicalView(
                title: 'Tire explosion',
                description: 'When this happens, the driver of the vehicle must:\n - His foot is removed from the gas pedal.\n - Doesn\'t use the brakes\n - He maintains a steady grip on the steering wheel while directing the car in a straight route.',
                color: Colors.indigo.shade300,
              ),
              MechanicalView(
                title: 'Disable the brakes',
                description: ' - You have to change the transmission to a lower position in order to slow down the movement of the vehiclen\n - Then press the brakes several times to equalize the pressure of the brake oil, so it may work again, or it may not\n - Use the handbrake, keeping in mind that if the car skids\n - Once you are safely off the road, turn off the vehicle\'s engine',
                color: Colors.pink,
              ),
              MechanicalView(
                title: 'Disable fuel',
                description: 'To approach the side of the road until the car comes to a complete stop, the driver must turn the steering wheel with both hands.',
                color: Colors.grey.shade200,
              ),
              MechanicalView(
                title: 'Hood elevation',
                description: ' - The driver of the vehicle should slow down gradually\n - Try to see through the window\n - Use the lane markers as a guide\n - Get out of the way as soon as possible with caution',
                color: Colors.pinkAccent.shade100,
              ),
            ],
          ),
            ],
          ),
        ),
      ),
    );
  }
}
