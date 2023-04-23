import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Tools1()));
// }

class Tools1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Tools using in the car',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.7000000834,
            color: Color(0xff000000),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        //child:
        // Container(
        //   padding: EdgeInsets.fromLTRB(25.5, 90, 26.5, 70.5),
        //   width: double.infinity,
        //   decoration: BoxDecoration(
        //     color: Color(0xffffffff),
        //   ),
        //   child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        //     Center(
        //       child: Container(
        //         margin: EdgeInsets.fromLTRB(1, 0, 0, 50),
        //         constraints: BoxConstraints(
        //           maxWidth: 254,
        //         ),
        //         child: Text(
        //           'Tools using in\n the car',
        //           textAlign: TextAlign.center,
        //           style: GoogleFonts.domine(
        //             fontSize: 35,
        //             fontWeight: FontWeight.w700,
        //             height: 1.14,
        //             letterSpacing: -0.7000000834,
        //             color: Color(0xff000000),
        //           ),
        //         ),
        //       ),
        //     ),
        //     Container(
        //       // autogroupdh5pDCR (BEtahadkLUfYSFg6yrdh5P)
        //       margin: EdgeInsets.fromLTRB(12, 0, 0, 80),
        //       width: 400,
        //       height: 300,
        //       child: Stack(children: [
        //
        //         Positioned(
        //           left: 40,
        //           child: SizedBox(
        //             width: 200,
        //             height: 25,
        //             child: Text(
        //               '1. Seatbelt',
        //               style: GoogleFonts.rokkitt(
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.w400,
        //                 height: 1,
        //                 letterSpacing: -0.3200000381,
        //                 color: Color(0xff000000),
        //               ),
        //             ),
        //           ),
        //         ),
        //
        //         Positioned(
        //
        //           child: Align(
        //             child: SizedBox(
        //               width: 326,
        //               height: 210,
        //               child: Text(
        //                 'It’s important to wear a seatbelt as a driver to make sure all passengers are'+
        //                     'secured with it or child restraint systems. And less likely to be injured,'+
        //                 'knocked unconscious or ejected. Even at low speeds, a crash forces a'+
        //                 'pressure of hundreds of kilometers against your body.',
        //                 style: GoogleFonts.rokkitt(
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.w400,
        //                   height: 1.1375,
        //                   letterSpacing: -0.3200000381,
        //                   color: Color(0xff000000),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //
        //         Positioned(
        //
        //           top: 170,
        //           child: Align(
        //             child: SizedBox(
        //               width: 326,
        //               height: 200,
        //               child: Text(
        //                 'Wearing your seatbelt can keep you in control of your '+
        //                     'vehicle by supporting you behind the steering wheel.'+
        //                     ' Also, can help you reduce your chance of injury,'+
        //                     ' death in a crash, or being ejected from the vehicle.',
        //                 style: GoogleFonts.rokkitt(
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.w400,
        //                   height: 1.1375,
        //                   letterSpacing: -0.3200000381,
        //                   color: Color(0xff000000),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ]),
        //     ),
        //     Container(
        //       // circlesvXF (1:41)
        //       margin: EdgeInsets.fromLTRB(125, 0, 0.5, 0),
        //       width: double.infinity,
        //       child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           Container(
        //             // ellipse1Ryo (1:42)
        //             width: 13,
        //             height: 13,
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(6.5),
        //               color: Color(0xff000000),
        //             ),
        //           ),
        //           SizedBox(
        //             width: 15,
        //           ),
        //           Container(
        //             // ellipse1Ryo (1:42)
        //             width: 13,
        //             height: 13,
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(6.5),
        //               color: Color(0xffd9d9d9),
        //             ),
        //           ),
        //           SizedBox(
        //             width: 15,
        //           ),
        //           Container(
        //             // ellipse1Ryo (1:42)
        //             width: 13,
        //             height: 13,
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(6.5),
        //               color: Color(0xffd9d9d9),
        //             ),
        //           ),
        //           SizedBox(
        //             width: 15,
        //           ),
        //           Container(
        //             // ellipse1Ryo (1:42)
        //             width: 13,
        //             height: 13,
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(6.5),
        //               color: Color(0xffd9d9d9),
        //             ),
        //           ),
        //           SizedBox(
        //             width: 15,
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       // skipfHo (1:48)
        //       margin: EdgeInsets.fromLTRB(200, 45.5, 0, 0),
        //       // SizedBox(
        //       width: 150,
        //       height: 65,
        //       child: ElevatedButton(
        //         child: Text(
        //           'Next',
        //           textAlign: TextAlign.right,
        //           style: GoogleFonts.rokkitt(
        //             fontSize: 30,
        //             fontWeight: FontWeight.w700,
        //             height: 1.1375,
        //             color: Color(0xffffffff),
        //           ),
        //         ),
        //         style: ElevatedButton.styleFrom(
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(
        //                 20), // Adjust border radius as per your need
        //           ),
        //           primary:
        //               Color(0xfc161853), // Set the background color of the button
        //         ),
        //         onPressed: () {},
        //       ),
        //       // ),
        //     ),
        //   ]),
        // ),
      ),
    );
  }
}
