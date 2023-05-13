import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Law8 extends StatefulWidget {
  const Law8({Key? key}) : super(key: key);

  @override
  State<Law8> createState() => _Law8State();
}

class _Law8State extends State<Law8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'General Provisions',
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
          '\n\nArticle 80\n\nA Supreme Traffic Council shall be established at the Ministry of Interior. A royal order shall specify composition, duties, and powers thereof, upon are commendation by the Minister of Interior. Said Council shall be the supreme authority overseeing traffic affairs by setting the general traffic policy.\n\nArticle 81\n\nThe competent court shall consider the following:\n1. Legal actions against violators of this Law or Regulations thereof.\n2. Appeals filed against the decisions of the competent authority or any other authority concerned with the implementation of this Law or Regulations thereof.\n\nArticle 82\n\nThe competent court may – at its own discretion – stay execution of sentences.\n\nArticle 83\n\nThis Law shall supersede the Traffic Law issued by Royal Decree No. (M/49)on 6/11/1391H and amendments thereto, and repeal any provisions conflicting there with.\n\nArticle 84\n\nThe Minister of Interior shall issue the Implementing Regulations of this Law within 180 days from the date of publication.\n\nArticle 85\n\nThis Law shall be published in the Official Gazette and shall come into force 180 days from the date of publication.',
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
