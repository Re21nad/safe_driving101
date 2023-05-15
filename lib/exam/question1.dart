import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'result1.dart';


List<String> results = [
  "Beginner",
  "Beginner",
  "Beginner",
  "Beginner",
  "Beginner"
];


class testQuestions1 extends StatefulWidget {
  const testQuestions1({Key? key}) : super(key: key);

  @override
  State<testQuestions1> createState() => _testQuestionsState1();
}

class _testQuestionsState1 extends State<testQuestions1> {

  List<Question> questions = [
    Question(
        Q: "What is sustainable safe driving?",
        A1: "It is an advanced driving system\n and is only available in modern \nvehicles.",
        A2: "It is an economical, safe, \nand environmentally friendly\n driving style.",
        A3: "It is driving for long \nand continuous periods.",
        difficulty: "easy",
        ans: 2),
    Question(
        Q: "How does sustainable driving help reduce stress levels?",
        A1: "It promotes a driving style \nthat reduces frequent stops.",
        A2: "It enhances driving style that \nhelps you finish your \njourney faster.",
        A3: "It promotes a driving style \nin which you can always \nmaintain maximum speed.",
        difficulty: "easy",
        ans: 1),
    Question(
        Q: "Among the most important benefits of sustainable driving are:",
        A1: "Extend the life of the vehicle.",
        A2: "Reduce fuel consumption.",
        A3: "Both a and b.",
        difficulty: "easy",
        ans: 3),
    Question(
        Q: "Electric vehicles are:",
        A1: "The largest source of harmful \nemissions.",
        A2: "The best environmental friend.",
        A3: "Produces less harmful gases.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "The carrier overload:",
        A1: "Increases fuel consumption and \ntire and brake wear.",
        A2: "Reduces fuel consumption and \ntire and brake wear.",
        A3: "It does not affect fuel \nconsumption, tires or brakes.",
        difficulty: "intermediate",
        ans: 1),
    Question(
        Q: "Observing the road ahead to look for signs and ground signs helps:",
        A1: "Avoid sudden increase or \ndecrease in speed.",
        A2: "Confuse you and prevent \nyou from planning driving.",
        A3: "Increases fuel consumption on \nlong trips.",
        difficulty: "intermediate",
        ans: 1),
    Question(
        Q: "Low tire pressure is a problem because:",
        A1: "It increases vehicle stability \nin exchange for increased fuel \nconsumption.",
        A2: "It reduces vehicle stability \nand increases fuel consumption.",
        A3: "It enhances steering wheel \ncontrol in exchange for increased \nfuel consumption.",
        difficulty: "hard",
        ans: 2),
    Question(
        Q: "Hybrid vehicles are powered based on:",
        A1: "Alternative energy.",
        A2: "electrical energy.",
        A3: "Two energy production systems, \ninternal combustion system \nand electric system.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "To maintain a sustainable driving style:",
        A1: "Keep the engine revolutions \nbelow 2500 rpm.",
        A2: "The number of engine \nrevolutions must exceed \n3500 rpm.",
        A3: "Maintain engine revolutions \nbetween 2,500 and 3,000 rpm.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "For whom is the use of seat belts compulsory by law?",
        A1: "The use of a belt is compulsory \nfor all occupants of the vehicle.",
        A2: "For the driver only.",
        A3: "For the driver and front \npassenger.",
        difficulty: "easy",
        ans: 1),
    Question(
        Q: "Choosing the appropriate seat for the child depends on:",
        A1: "The age and gender of the child.",
        A2: "The age, height and weight of \nthe child.",
        A3: "The age and weight of the child.",
        difficulty: "easy",
        ans: 3),
    Question(
        Q: "Why is correct head restraint adjustment important?",
        A1: "To rest the neck during long \ntrips.",
        A2: "To protect the neck from injury \nduring accidents.",
        A3: "It is not important to adjust \nthe headrest.",
        difficulty: "easy",
        ans: 2),
    Question(
        Q: "If you have comprehensive coverage insurance, you are:",
        A1: "Protected from liability \ntowards third parties only.",
        A2: "Protected against third \nparty liability, the insurance \ncovers injuries/damages.",
        A3: "Protected from liability towards \nthe third party if you \nare not responsible.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "What does (ADAS) stand for?",
        A1: "Automated Driver Assistance \nSystem.",
        A2: "Advanced Driver Automation \nSystem.",
        A3: "All driver events systems.",
        difficulty: "intermediate",
        ans: 1),
    Question(
        Q: "The Anti-Slip System (ESP) helps:",
        A1: "Seeing better in the dark \nor in conditions of \nlimited visibility.",
        A2: "It helps the driver to \nsteer while braking.",
        A3: "Detects chances of vehicle \nslipping and corrects \nit automatically.",
        difficulty: "intermediate",
        ans: 3),
    Question(
        Q: "What is the function of the incentive filter?",
        A1: "It helps to cool the engine \nwhen it is running for \nlong periods at high speeds.",
        A2: "Injection of the fuel-air \nmixture into the engine \nto produce power.",
        A3: "Converting harmful gases into \nless harmful gases before \nexpelling them out of \nthe vehicle.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "How does the anti-lock brake system help the driver?",
        A1: "It helps to stop the \nvehicle faster in any\n condition.",
        A2: "Helps prevent the vehicle \nfrom derailing.",
        A3: "Helps the driver maintain the \nvehicle's steering ability \ndespite hard braking.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "When does understeer occur?",
        A1: "Understeer occurs when the \nrear tires break\n traction during a turn.",
        A2: "Understeer occurs when the \nfront tires break\n traction during a turn.",
        A3: "Understeer occurs when all \nfour tires break traction \nwith the road during a turn.",
        difficulty: "hard",
        ans: 2),
    Question(
        Q: "A new driver is:",
        A1: "An experienced driver who \ndrives smoothly.",
        A2: "A driver who overestimates \nhis skills, which\n leads him to accidents.",
        A3: "A driver who adapts to road \nand traffic conditions.",
        difficulty: "easy",
        ans: 2),
    Question(
        Q: "Your ability to plan well and avoid risks depends on:",
        A1: "Your focus and willingness \nto face risks.",
        A2: "Your ability to analyze \ninformation and adjust your \ndriving style to suit the \ncircumstances.",
        A3: "Both A and B.",
        difficulty: "easy",
        ans: 3),
    Question(
        Q: "The ability to understand and avoid risks:",
        A1: "It is a skill that is \nborn with the driver.",
        A2: "It is a skill that \ndevelops with time \nand experience.",
        A3: "It is a greater skill \nin men than in women.",
        difficulty: "easy",
        ans: 2),
    Question(
        Q: "What are the risks?",
        A1: "Risks are represented by \nconcrete barriers on the sides \nof the road.",
        A2: "It is driving on the roads made \nfor buses.",
        A3: "Anything that would force you to \nchange your position, \nspeed or direction.",
        difficulty: "intermediate",
        ans: 3),
    Question(
        Q: "The main benefit of training on simulators is:",
        A1: "Help the trainee become good \nat controlling the vehicle.",
        A2: "Help the trainee master all \nthe exercises.",
        A3: "Help the trainee test difficult \nconditions in a safe \nenvironment.",
        difficulty: "intermediate",
        ans: 3),
    Question(
        Q: "Which of the following situations is the potential danger:",
        A1: "A vehicle parked on the side \nof the road.",
        A2: "A child gets off the school bus.",
        A3: "A vehicle stopped at a red light.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "What are the three main sources of risk?",
        A1: "Fixed road sections, speed \nand position of other \nvehicles, signals and land lines.",
        A2: "Temporary road sections, \nspeed and position of \nother vehicles, road and \nweather conditions.",
        A3: "Fixed road sections, speed \nand position of other \nvehicles, road and \nweather conditions.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "Modern vehicles usually contain devices that enhance road monitoring, including:",
        A1: "Parking sensors and blind \nspots.",
        A2: "ABS system.",
        A3: "ESP system.",
        difficulty: "hard",
        ans: 1),
    Question(
        Q: "What is the correct sequence for dealing with risks?",
        A1: "Observe, select, prioritize, plan, act.",
        A2: "Observe, prioritize, select, plan, act.",
        A3: "Prioritize, observe, select, plan, act.",
        difficulty: "hard",
        ans: 2),
    Question(
        Q: "What is MSPSL?",
        A1: "Mirrors, speed, position, sign, \nlooking.",
        A2: "Moving, speed, position, sign, \nlooking.",
        A3: "Mirrors, sign, position, speed, \nlooking.",
        difficulty: "easy",
        ans: 3),
    Question(
        Q: "The priority of passage at roundabouts is:",
        A1: "For vehicles inside the \nroundabout.",
        A2: "For vehicles that want to enter.",
        A3: "For public transport vehicles.",
        difficulty: "easy",
        ans: 1),
    Question(
        Q: "When approaching curves, you must:",
        A1: "Slow down before entering.",
        A2: "Reduce the speed inside the \ncurve.",
        A3: "Increase speed.",
        difficulty: "easy",
        ans: 1),
    Question(
        Q: "Intersections of equal priority are regulated by?",
        A1: "Landlines.",
        A2: "Traffic lights.",
        A3: "Traffic policemen.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "The position of turning left on a two-way road?",
        A1: "Center right lane.",
        A2: "As close as possible to the \nmidline.",
        A3: "You do not need a specific \nposition.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "The basic position for driving on a multi-lane road is:",
        A1: "Right lane.",
        A2: "Left lane.",
        A3: "All lanes.",
        difficulty: "intermediate",
        ans: 1),
    Question(
        Q: "How can we detect side blind spots if this technology is not available in the vehicle?",
        A1: "By extending the head \nout of the vehicle.",
        A2: "Through the side mirrors.",
        A3: "By looking over the \nshoulder towards the back.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "When is bypassing allowed?",
        A1: "Just before intersections \nand roundabouts.",
        A2: "In tunnels and on bridges.",
        A3: "None of the above.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "The safe following distance in bad conditions or when you are tired?",
        A1: "2-3 seconds",
        A2: "4-6 seconds",
        A3: "70 meters",
        difficulty: "hard",
        ans: 2),
    //////////////////////////
    Question(
        Q: "To issue a private driver's license, you must:",
        A1: "The applicants minimum age \nmust be 18.",
        A2: "The applicants minimum age \nmust be 16.",
        A3: "The applicants minimum age \nmust be 20.",
        difficulty: "easy",
        ans: 1),
    Question(
        Q: "To renew a driver's license: ",
        A1: "The previous driver's license \nmust be expired.",
        A2: "Traffic fines, if any, must be \npaid.",
        A3: "It doesn't matter if there are \nsecurity notes in \nthe log.",
        difficulty: "easy",
        ans: 2),
    Question(
        Q: "The validity of the medical examination to issue the driver's license:",
        A1: "2 months.",
        A2: "3 months.",
        A3: "6 months.",
        difficulty: "easy",
        ans: 2),
    Question(
        Q: "International driving licenses:",
        A1: "Are valid in the country where \nthe driver resides.",
        A2: "Are valid for one year only.",
        A3: "Does not require a local driver \nlicense.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "Driving license is withdrawn for a period of three months:",
        A1: "When the violator obtains \n(24) points for the \nsecond time within one year.",
        A2: "When the violator obtains \n(24) points for the \nthird time within one year.",
        A3: "When the violator obtains \n(24) points for the \nfirst time within one year.",
        difficulty: "intermediate",
        ans: 3),
    Question(
        Q: "When the violator obtains (24) points for the fourth time within a year:",
        A1: "Driving license is permanently \nrevoked.",
        A2: "Driving license is withdrawn \nfor three months.",
        A3: "Driving license is revoked \nfor one year.",
        difficulty: "intermediate",
        ans: 1),
    Question(
        Q: "Driving a vehicle under the influence of intoxicants or narcotics adds?",
        A1: "30 points to your record.",
        A2: "34 points to your record.",
        A3: "24 points to your record.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "Bypassing a red traffic light adds?",
        A1: "12 points to your record.",
        A2: "16 points to your record.",
        A3: "18 points to your record.",
        difficulty: "hard",
        ans: 1),
    Question(
        Q: "Not wearing a seatbelt adds?",
        A1: "10 points to your record.",
        A2: "2 points to your record.",
        A3: "8 points to your record.",
        difficulty: "hard",
        ans: 2),
  ];

  int Ecounter = 0;
  int Icounter = 4;
  int Hcounter = 6;
  int chosenQ = 3;
  int Elimit = 3;
  int Ilimit = 6;
  int Hlimit = 9;
  int lessonNum = 1;
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,

        title: Text(
          'Question ' + i.toString(),
          textAlign: TextAlign.center,
          style: GoogleFonts.domine(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.7000000834,
            color: Color(0xff000000),
          ),
        ),

      ),

      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        width: double.infinity,
        //height: 800,
        //color: Colors.white,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 70,),
              Container(
                margin: EdgeInsets.only(right: 22,left: 22),
                width: double.infinity,
                height: 165,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xff000000)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(3, 3),
                      blurRadius: 2,
                    ),
                  ],
                ),

                child: Center(

                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    child: Text(
                      questions.elementAt(chosenQ).Q,
                      style: GoogleFonts.rokkitt(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        height: 1.1375,
                        letterSpacing: -0.5400000644,
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,

                    ),
                  ),
                ),

              ), // Square

              SizedBox(height: 25,),
              // Container(
              //   margin: EdgeInsets.only(left: 30),
              //   width: double.infinity,
              //   height: 30,
              //
              //   child:
                Text(
                  'Answers:',
                  style: GoogleFonts.domine(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    height: 1.14,
                    letterSpacing: -0.4800000572,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.left,
                ),
                // ), // Answer

              SizedBox(height: 25,),

              Container(
                margin: EdgeInsets.only(right: 10),
                width: double.infinity,


                child: Container(
                  // padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          i++;
                          //////to end test
                          if (Ecounter == Elimit ||
                              Icounter == Ilimit ||
                              Hcounter == Hlimit) {
                            //add result
                            if (Icounter == Ilimit) {
                              results[lessonNum - 1] = "Intermediate";
                            } else if (Hcounter == Hlimit) {
                              results[lessonNum - 1] = "Expert";
                            }
                            if (lessonNum >= 5) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Result1()),
                              );
                            } else {
                              lessonNum++;
                              Ecounter = Hlimit;
                              Icounter = Hlimit + 4;
                              Hcounter = Hlimit + 6;
                              chosenQ = Hlimit + 3;
                              Elimit += 9;
                              Ilimit += 9;
                              Hlimit += 9;
                              setState(() {});
                            }
                          }
                          ////////answer correct
                          else if (questions.elementAt(chosenQ).ans == 1) {
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "easy") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or hard
                              chosenQ = Hcounter;
                              Hcounter++;
                            }
                          } else {
                            //wrong answer
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "hard") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or easy
                              chosenQ = Ecounter;
                              Ecounter++;
                            }
                          }
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xfc161853)),
                        child: Text(
                          'A.',
                          style: GoogleFonts.rokkitt(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.1375,
                            color: Colors.black,
                          ),
                        ),
                      ),

                        Text(
                          questions.elementAt(chosenQ).A1,
                          style: GoogleFonts.rokkitt(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            height: 1.1375,
                            letterSpacing: -0.5000000596,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.left,
                        ),


                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                ),
              ),

              SizedBox(height: 25,),
              Container(

                margin: EdgeInsets.only(right: 10),
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [

                      TextButton(
                        onPressed: () {
                          i++;
                          //////to end test
                          if (Ecounter == Elimit ||
                              Icounter == Ilimit ||
                              Hcounter == Hlimit) {
                            //add result
                            if (Icounter == Ilimit) {
                              results[lessonNum - 1] = "Intermediate";
                            } else if (Hcounter == Hlimit) {
                              results[lessonNum - 1] = "Expert";
                            }
                            if (lessonNum >= 5) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Result1()),
                              );
                            } else {
                              lessonNum++;
                              Ecounter = Hlimit;
                              Icounter = Hlimit + 4;
                              Hcounter = Hlimit + 6;
                              chosenQ = Hlimit + 3;
                              Elimit += 9;
                              Ilimit += 9;
                              Hlimit += 9;
                              setState(() {});
                            }
                          }
                          ////////answer correct
                          else if (questions.elementAt(chosenQ).ans == 2) {
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "easy") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or hard
                              chosenQ = Hcounter;
                              Hcounter++;
                            }
                          } else {
                            ////wrong answer
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "hard") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or easy
                              chosenQ = Ecounter;
                              Ecounter++;
                            }
                          }
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xfc161853)),
                        child: Text(
                          'B.',
                          style: GoogleFonts.rokkitt(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.1375,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    Text(
                      questions.elementAt(chosenQ).A2,
                      style: GoogleFonts.rokkitt(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        height: 1.1375,
                        letterSpacing: -0.5000000596,
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),

                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),

              SizedBox(height: 25,),
              Container(

                margin: EdgeInsets.only(right: 10),
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [

                      TextButton(
                        onPressed: () {
                          i++;
                          //////to end test
                          if (Ecounter == Elimit ||
                              Icounter == Ilimit ||
                              Hcounter == Hlimit) {
                            //add result
                            if (Icounter == Ilimit) {
                              results[lessonNum - 1] = "Intermediate";
                            } else if (Hcounter == Hlimit) {
                              results[lessonNum - 1] = "Expert";
                            }
                            if (lessonNum >= 5) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Result1()),
                              );
                            } else {
                              lessonNum++;
                              Ecounter = Hlimit;
                              Icounter = Hlimit + 4;
                              Hcounter = Hlimit + 6;
                              chosenQ = Hlimit + 3;
                              Elimit += 9;
                              Ilimit += 9;
                              Hlimit += 9;
                              setState(() {});
                            }
                          }
                          ////////answer correct
                          else if (questions.elementAt(chosenQ).ans == 3) {
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "easy") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or hard
                              chosenQ = Hcounter;
                              Hcounter++;
                            }
                          } else {
                            ////wrong answer
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "hard") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or easy
                              chosenQ = Ecounter;
                              Ecounter++;
                            }
                          }
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xfc161853)),
                        child: Text(
                          'C.',
                          style: GoogleFonts.rokkitt(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.1375,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    Text(
                      questions.elementAt(chosenQ).A3,
                      style: GoogleFonts.rokkitt(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        height: 1.1375,
                        letterSpacing: -0.5000000596,
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),

                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),

              SizedBox(height: 90,),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              child: Text(
                'Skip',
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
                  borderRadius: BorderRadius.circular(20),
                ),
                primary: Color(0xfc161853),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Confirmation'),
                      content: Text('Are you sure you want to skip?'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                        ),
                        TextButton(
                          child: Text('Skip'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Result1()),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),


          ],
          ),
        ),
      ),
    );
  }
}

class Question {
  String Q = "";
  String A1 = "";
  String A2 = "";
  String A3 = "";
  String difficulty = "";
  int ans;
  Question(
      {required this.Q,
        required this.A1,
        required this.A2,
        required this.A3,
        required this.difficulty,
        required this.ans});
}