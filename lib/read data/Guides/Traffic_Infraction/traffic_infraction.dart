import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Traffic extends StatefulWidget {
  // const Traffic({Key? key}) : super(key: key);

  @override
  State<Traffic> createState() => _TrafficState();
}

class _TrafficState extends State<Traffic> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xfcffffff),
      //   // change to your desired color
      //   centerTitle: true,
      //   elevation: 0.0,
      //   title: Text(
      //     'Traffic Infraction',
      //     textAlign: TextAlign.left,
      //     style: GoogleFonts.domine(
      //       fontSize: 19,
      //       fontWeight: FontWeight.w700,
      //       height: 1.14,
      //       letterSpacing: -0.7000000834,
      //       color: Color(0xff000000),
      //     ),
      //   ),
      //
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: LiquidSwipe(
        pages: pages_,
        slideIconWidget: const Icon(Icons.arrow_back_ios),
        positionSlideIcon: 0.5,
        waveType: WaveType.liquidReveal,
        fullTransitionValue: 300,
        enableLoop: true,
        // enableSideReveal: true,

      ),
    );

  }
  final pages_ = [
    Container(
      color: Color(0xfcfee0e0),

      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 1',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (100/150) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.black, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1- Driving in markets where driving is not permitted.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '2- Leaving the vehicle unlocked and running after leaving it.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '3- No valid vehicle insurance.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '4- Pedestrians crossing roads other than the places designated for them.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '5- Non-compliance of pedestrians with their signals.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '6- Parking the vehicle in places not designated for parking.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),

                Text(
                  '7- Not giving priority to pedestrians while crossing the lanes designated for them.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),

        ],
      ),
    ),// Infraction 1
    Container(
      color: Colors.grey[100],
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 2',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (150/300) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.black, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1- Not using the turn signal when turning right or left, overtaking or changing lanes.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '2- Reversing on a public road for a distance of more than twenty metres.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '3- Drivers of powered or regular bicycles, or their equivalents, who are dragging or hauling objects that risk other road users while hanging to other vehicles.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '4- Infractions of the guidelines for using the lights of convergence.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '5- Failure to replace a driver\'s license or driver\'s license while driving.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '6- Abuse of the vehicle alarm.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),

                Text(
                  '7- Failure to submit the vehicle for periodic technical inspection.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '8- traffic violation.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

              ],
            ),
          ),

        ],
      ),
    ),// Infraction 2
    Container(
      color: Colors.grey[300],
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 2',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (150/300) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.black, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  '9- Not to buckle.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),


                SizedBox(height: 10,),
                Text(
                  '10- Placing barriers inside or outside the vehicle that obstructs the driver\'s vision.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '11- The driver does not leave a sufficient distance between his vehicle and the vehicle in front of him to avoid an accident.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '12- Moving the vehicle at a high speed, so that the tires make a loud sound.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '13- Gathering at the accident site.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '14- The driver skips lines of vehicles in front of traffic lights or security control points using the shoulder of the road or the lane designated for turning. ',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '15- Lack of regulatory requirements of the trailer.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    ),// Continue 2
    Container(
      color: Colors.indigo[100],
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 3',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (300/500) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.black, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1- Not taking the necessary precautions when stopping the vehicle in emergency situations on public roads.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '2- Throwing objects out of the vehicle.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '3- Slowing down in a way that impedes movement.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '4- Busy without the road while driving the vehicle.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '5- Using the brakes suddenly and unnecessarily.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '6- Non-compliance with traffic regulations at road junctions.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),

                Text(
                  '7- Non-compliance with the limits of the specified lanes on the road.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
               ],
            ),
          ),

        ],
      ),
    ),// Infraction 3
    Container(
      color: Colors.indigo[200],
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 3',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (300/500) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.black, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '8- Making noise using devices from inside the vehicle, or committing any behavior contrary to public morals, while driving.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '9- Driving with an expired driver\'s license.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '10- Not using child safety seats.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '11- Leaving the vehicle on a sloping road without taking the necessary precautions.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '12- Leaving children under the age of (ten) in the vehicle without an accompanying adult.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),

        ],
      ),
    ),// Continue 3
    Container(
      color: Colors.pink[100],
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 4',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (500/900) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.black, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1- Chasing emergency vehicles while using their alarms.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '2- Driving on the road in collectible vehicles.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '3- Not stopping completely at a stop sign.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '4- Refrain from stopping completely at the (priority ahead) sign in case vehicles pass on the road given priority.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '5- Not giving preference to the vehicle coming from the right when reaching an intersection with equal preference at the same time and when there are no priority signs.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '6- Not giving preference to vehicles on the main road in the absence of a priority sign.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),

                Text(
                  '7- Non-compliance with the security man\'s manual signals when regulating movement and not giving his initial signal at traffic lights.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),

        ],
      ),
    ),// Infraction 4
    Container(
      color: Colors.pink[200],
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 4',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (500/900) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.black, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '8- Not giving preference to vehicles inside the roundabout over vehicles outside it in the absence of traffic lights or a security man directing traffic.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '9- Driving the vehicle inside the tunnels without turning on its lights.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '10- Increasing the dimensions of the transported load of light transport vehicles to the permissible limit.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '11- The driver of the emergency vehicle uses its alarms unnecessarily.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '12- Not giving priority to traffic at road junctions or their intersections to the driver of the vehicle ahead of others in the absence of signs regulating this.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '13- Failure of the driver, in the event of a change of direction, to make a U-turn, to give priority to vehicles coming from other directions.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),

                Text(
                  '14- If a part of the road is closed, the driver fails to give preference to those whose road is open.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),

        ],
      ),
    ),// Continue 4
    Container(
      color: Color(0xFFEC255A),
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 4',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.white, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (500/900) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.white, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '15- Failure of the driver who wishes to change his lane to give preference to the driver of the vehicle that is traveling in a straight direction if the two vehicles are traveling in parallel.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '16- Not giving priority to vehicles coming from the main road if it intersects with a secondary road or a dirt road.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '17- Not giving priority to public transportation such as trains or buses and the like if they are traveling on the tracks designated for them.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '18- Transporting passengers in places not designated for them in the vehicle.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '19- The driver using any mobile device in his hand while the vehicle is moving.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '20- Standing in parking spaces for people with special needs other than this permitted category.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

              ],
            ),
          ),

        ],
      ),
    ),// Continue 4
    Container(
      color: Color(0xfcfee0e0),
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 5',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (1000/2000) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.black, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1- Entry of trucks, heavy equipment and the like into or out of cities at times not permitted.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '2- Driving a vehicle with a driver’s license that is not commensurate with the vehicle’s size and type of use.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '3- Refusing to show the documents of the driver or the vehicle to those authorized to view them.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '4- Driving the vehicle without a front panel.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '5- Failure to complete the procedures for modifying the scope of use of the vehicle.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '6- Failure to remove the vehicle intended for export within the specified period.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),

                Text(
                  '7- Not wearing a helmet while riding a motorbike.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    ),// Infraction 5
    Container(
      color: Colors.deepPurple[100],
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 5',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (1000/2000) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.black, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '8- Driving a vehicle before obtaining a driving license or if the license is revoked.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '9- Not giving priority to official or emergency convoy vehicles.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '10- Get off or get on while the vehicles are moving,',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '11- Overtaking in areas where overtaking is prohibited, such as turns and hills.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '12- Not using the necessary lights when walking at night or in weather conditions in which visibility is not clear',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '13- Carrying out any modification or addition to the body or structure of the vehicle that changes its features or basic equipment without taking legal action.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),

                Text(
                  '14- Driving a vehicle without the necessary equipment, such as brakes, lights and the like.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    ),// Continue 5
    Container(
      color: Colors.grey[200],
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 6',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (3000/6000) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.black, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1- Passing a traffic light during a red light.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '2- Overtaking school buses when they stop for loading or unloading.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '3- Tampering with road signs, reflectors, or trucks regulating traffic.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '4- not stopping when instructed to do so by a command or sign at security control centers, checkpoints, or when a security patrol needs your attention.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '5- Using unauthorized devices in the vehicle or placing slogans or stickers that are contrary to public morals.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '6- Driving the vehicle in the opposite direction of traffic.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),

                Text(
                  '7- Dodging quickly between vehicles on public roads.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

              ],
            ),
          ),

        ],
      ),
    ),// Infraction 6
    Container(
      color: Colors.indigo[200],
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 6',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.black, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50,),
          Text(
            'The financial fine (3000/6000) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.black, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  '8- Carrying out a race for vehicles on public roads, or walking in processions without obtaining a permit.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '9- Trucks and heavy equipment not adhering to the right lane on the multi-lane road.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '10- Failure of animal owners to remove them from the approved right-of-way.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '11- Installing equipment in the vehicle, such as those for official vehicles and emergency vehicles.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '12- Before taking the necessary precautions to prevent damages, such as not attaching reflective strips to the sides of the vehicle\'s back, public works vehicles are driven on the roads.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '13- The vehicle runs without a back plate, or without plates.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),

                SizedBox(height: 10,),
                Text(
                  '14- Obliterating vehicle plates.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.black, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),

        ],
      ),
    ),// Continue 6
    Container(
      color: Color(0xfc161853),
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text(
              'Infractions No. 7',
              style: GoogleFonts.domine(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.35,
                color: Colors.white, // Changing the text color to white for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),


          SizedBox(height: 50,),
          Text(
            'The financial fine (5000/10000) SAR',
            style: GoogleFonts.domine(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.white, // Changing the text color to white for better visibility
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1- Driving a vehicle under the influence of intoxication, narcotics, or drugs A warning against driving under the influence.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '2- Carrying out road works before coordinating with the concerned department.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '3- Allowing animal owners to cross their pets outside of approved areas for them or without consulting the appropriate authorities.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '4- Obliterating or attempting to obliterate the vehicle\'s chassis number.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '5- Use of non-vehicle plates.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                Text(
                  '6- Taking the risk of crossing valleys and reefs while they are running',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left,
                ),
                
              ],
            ),
          ),
        ],
      ),
    ),// Infraction 7
    // Container(
    //   color: Color(0xFFEC255A),
    //   width: double.infinity,
    //   child: Column(
    //     //mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       SizedBox(height: 45,),
    //       Center(
    //         child: Text(
    //           'Infractions No. 8',
    //           style: GoogleFonts.domine(
    //             fontSize: 20,
    //             fontWeight: FontWeight.bold,
    //             height: 1.35,
    //             color: Colors.white, // Changing the text color to white for better visibility
    //           ),
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //
    //       SizedBox(height: 50,),
    //       Text(
    //         'Speed of 120 km/h or less.',
    //         style: GoogleFonts.domine(
    //           fontSize: 17,
    //           fontWeight: FontWeight.bold,
    //           height: 1.35,
    //           color: Colors.white, // Changing the text color to white for better visibility
    //         ),
    //         textAlign: TextAlign.center,
    //       ),
    //       SizedBox(height: 30,),
    //       Text(
    //         'Speed of 140 km/h or less.',
    //         style: GoogleFonts.domine(
    //           fontSize: 17,
    //           fontWeight: FontWeight.bold,
    //           height: 1.35,
    //           color: Colors.white, // Changing the text color to white for better visibility
    //         ),
    //         textAlign: TextAlign.center,
    //       ),
    //       SizedBox(height: 30,),
    //       Container(
    //         margin: EdgeInsets.symmetric(horizontal: 33),
    //         width: double.infinity,
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               '1- Driving in markets where driving is not permitted.',
    //               style: GoogleFonts.rokkitt(
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.w400,
    //                 height: 1.35,
    //                 color: Colors.black, // Changing the text color to white for better visibility
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             SizedBox(height: 10,),
    //             Text(
    //               '2- Leaving the vehicle unlocked and running after leaving it.',
    //               style: GoogleFonts.rokkitt(
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.w400,
    //                 height: 1.35,
    //                 color: Colors.black, // Changing the text color to white for better visibility
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             SizedBox(height: 10,),
    //             Text(
    //               '3- No valid vehicle insurance.',
    //               style: GoogleFonts.rokkitt(
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.w400,
    //                 height: 1.35,
    //                 color: Colors.black, // Changing the text color to white for better visibility
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             SizedBox(height: 10,),
    //             Text(
    //               '4- Pedestrians crossing roads other than the places designated for them.',
    //               style: GoogleFonts.rokkitt(
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.w400,
    //                 height: 1.35,
    //                 color: Colors.black, // Changing the text color to white for better visibility
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             SizedBox(height: 10,),
    //             Text(
    //               '5- Non-compliance of pedestrians with their signals.',
    //               style: GoogleFonts.rokkitt(
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.w400,
    //                 height: 1.35,
    //                 color: Colors.black, // Changing the text color to white for better visibility
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             SizedBox(height: 10,),
    //             Text(
    //               '6- Parking the vehicle in places not designated for parking.',
    //               style: GoogleFonts.rokkitt(
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.w400,
    //                 height: 1.35,
    //                 color: Colors.black, // Changing the text color to white for better visibility
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             SizedBox(height: 10,),
    //
    //             Text(
    //               '7- Not giving priority to pedestrians while crossing the lanes designated for them.',
    //               style: GoogleFonts.rokkitt(
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.w400,
    //                 height: 1.35,
    //                 color: Colors.black, // Changing the text color to white for better visibility
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //           ],
    //         ),
    //       ),
    //
    //     ],
    //   ),
    // ),// Infraction 8
  ];


}
