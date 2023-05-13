import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Law5 extends StatefulWidget {
  const Law5({Key? key}) : super(key: key);

  @override
  State<Law5> createState() => _Law5State();
}

class _Law5State extends State<Law5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Rules of the Road',
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
        margin: EdgeInsets.only(left: 15),
        child: Text(
          '\n\nArticle 50\n\nEstablishment of shopping centers and the like requires the approval of the competent authority, and the Regulations shall set necessary procedures in coordination with relevant agencies.\n\nArticle 51\n\nRoad markings, reflectors, and signs annexed to this Law shall be deemed an integral part thereof and drivers shall comply therewith as well as with instructions issued by the competent authorities in accordance with the provisions of this Law and its Regulations.\n\nArticle 52\n\nRoad markings, reflectors, and signs may not be destroyed, tampered with,moved, or disposed of in a way that would make them less visible or interfere with the internationally agreed upon meaning thereof.\n\nArticle 53\n\nDriving shall be on the right side of the road.\n\nArticle 54\n\nPriority shall be given to on duty emergency vehicles and official motorcades,provided that drivers of said vehicles observe the safety of others.\n\nArticle 55\n\nPedestrians may only use designated areas as specified by the Regulations.\n\nArticle 56\n\nSchool buses stopping for embarking and disembarking passengers may not be overtaken, subject to the conditions set by the Regulations.\n\nArticle 57\n\nWhile a vehicle is in motion, drivers and passengers must wear seat belts and children must be seated in child seats.\n\nArticle 58\n\nAny person riding a motorcycle must wear a helmet at all times, subject to the conditions set by the Regulations.',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.4800000572,
            color: Color(0xff000000),
          ),
        ),
      )),
    );
  }
}
