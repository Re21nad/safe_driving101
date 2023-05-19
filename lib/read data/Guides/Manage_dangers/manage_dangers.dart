import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/abs.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/animal.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/control.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/driving.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/emergency_equipment.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/mechanical_failures.dart';
// import 'package:safe_driving101/read%20data/Guides/Traffic_Infraction/animal.dart';
// import 'package:safe_driving101/read%20data/Guides/Traffic_Infraction/control.dart';
// import 'package:safe_driving101/read%20data/Guides/Traffic_Infraction/driving.dart';
// import 'package:safe_driving101/read%20data/Guides/Traffic_Infraction/emergency_equipment.dart';
// import 'package:safe_driving101/read%20data/Guides/Traffic_Infraction/mechanical_failures.dart';

class Manage extends StatefulWidget {
  const Manage({Key? key}) : super(key: key);

  @override
  State<Manage> createState() => _ManageState();
}

class _ManageState extends State<Manage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Manage Dangers',
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
                'You may be exposed to a variety of risks when driving that you must manage. The following are some of the most significant risks you could encounter when driving and how to deal with them:',
                style: GoogleFonts.domine(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                textAlign: TextAlign.left, // Centering the text within the container
              ),

              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                height:600,
                child: Column(

                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => ABS()));
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) {
                              return ABS();
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
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        primary: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      child:
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 80),
                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: Text(
                          'ABS',
                          style: GoogleFonts.domine(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 1.35,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),

                    ),

                    SizedBox(height: 20,),

                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Control()));
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) {
                              return Control();
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
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        primary: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      child:
                      Container(

                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: Text(
                          'Vehicle Loss of Control',
                          style: GoogleFonts.domine(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 1.35,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),

                    ),

                    SizedBox(height: 20,),

                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => mechanicalFailure()));
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) {
                              return mechanicalFailure();
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
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        primary: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      child:
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: Text(
                          'Mechanical Failures',
                          style: GoogleFonts.domine(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 1.35,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),

                    ),

                    SizedBox(height: 20,),

                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Driving()));
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) {
                              return Driving();
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
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
                        primary: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      child:
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 11),
                        margin: EdgeInsets.symmetric(horizontal: 3,vertical: 20),
                        child: Text(
                          'Driving in Different Conditions',
                          style: GoogleFonts.domine(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.35,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),

                    ),

                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => emergencyEquipment()));
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) {
                              return emergencyEquipment();
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
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
                        primary: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      child:
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        margin: EdgeInsets.symmetric(horizontal: 3,vertical: 20),
                        child: Text(
                          'Use of Emergency Equipment',
                          style: GoogleFonts.domine(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.35,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),

                    ),

                    SizedBox(height: 20,),

                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Animal()));
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) {
                              return Animal();
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
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        primary: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      child:
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: Text(
                          'Animal Transgenes',
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


            ],
          ),
        ),
      ),
    );
  }
}
