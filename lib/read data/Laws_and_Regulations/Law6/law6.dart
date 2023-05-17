import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Law6 extends StatefulWidget {
  const Law6({Key? key}) : super(key: key);

  @override
  State<Law6> createState() => _Law6State();
}

class _Law6State extends State<Law6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Accidents',
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 20,),
                Center(
                  child: Text(
                    'Article 59',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),


                SizedBox(height: 15,),
                Text(
                  'Traffic accidents are of two types:\n\nA. Minor traffic accidents.\nB. Severe traffic accidents. \nThe Regulations shall specify the details thereof.\n',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.14,
                    letterSpacing: -0.7000000834,
                    color: Color(0xff000000),
                  ),
                ),

                SizedBox(height: 30,),
                Center(
                  child: Text(
                    'Article 60',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Text(
                  'Drivers shall be liable for traffic accidents resulting from negligence, carelessness, or non- compliance with laws. Details thereof shall be specified by the Regulations.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.14,
                    letterSpacing: -0.7000000834,
                    color: Color(0xff000000),
                  ),
                ),

                SizedBox(height: 30,),
                Center(
                  child: Text(
                    'Article 61',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Text(
                  '1. In case of a traffic accident resulting in a public right, the competent authority shall immediately initiate evidence collection procedures, notify the Public Prosecution, and forward the case file thereto, in accordance with the Law of Criminal Procedure.\n2. In case of a traffic accident resulting in only a private right, the competent authority shall detain the perpetrator of the accident for a period not exceeding 24 hours, unless he provides a financial guarantee, surety, or a guarantee ensuring satisfaction of the private right. If the perpetrator fails to provide any of the aforementioned guarantees, he shall be referred to the competent court in accordance with statutory procedures upon the lapse of the period stipulated in this paragraph.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.14,
                    letterSpacing: -0.7000000834,
                    color: Color(0xff000000),
                  ),
                ),

                SizedBox(height: 30,),
                Center(
                  child: Text(
                    'Article 62',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  '1. Any person intentionally or recklessly involved in a traffic accident resulting in death, loss of an organ, or dysfunction of an organ or part thereof, shall be punished by imprisonment for a period not exceeding four years and a fine not exceeding 200,000 riyals, or either penalty, without prejudice to the private right.\n2. Any person committing a traffic accident intentionally or recklessly resulting in injury, the recovery from which requires more than 15 days, shall be punished by imprisonment for a period not exceeding two years and a fine not exceeding 100,000 riyals, or either penalty, without prejudice to the private right.\n3. Save for the provisions of paragraphs (1) and (2) of this Article, any person committing a traffic accident intentionally or recklessly shall be referred to the competent court in accordance with statutory procedures to determine the proper penalty, without prejudice to the private right. The Regulations shall determine cases of intentionality and recklessness covered by this paragraph.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.14,
                    letterSpacing: -0.7000000834,
                    color: Color(0xff000000),
                  ),
                ),

                SizedBox(height: 30,),
                Center(
                  child: Text(
                    'Article 63',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  '1. Subject to Articles 61 and 62 of this Law, the driver of any vehicle involved in a traffic accident shall immediately stop the vehicle at the scene of the accident, notify the competent authority, and offer all possible assistance to the injured. A driver who fails to do so shall be punished by a fine not exceeding 10,000 riyals or imprisonment for a period not exceeding three months, or both penalties. The vehicle may be moved from the scene of the accident in cases specified in the Regulations.\n2. The penalty stipulated in paragraph (1) of this Article shall be imposed on any person committing any of the following acts:\n\na) Substituting the driver of the vehicle causing the accident, or participating therein.\nb) Faking a traffic accident.\n',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.14,
                    letterSpacing: -0.7000000834,
                    color: Color(0xff000000),
                  ),
                ),

                SizedBox(height: 30,),
                Center(
                  child: Text(
                    'Article 64',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Text(
                  'Repair shop owners and workers, or others, may not undertake any of the following without obtaining a prior valid permission from the competent authority:\n\n1. Repairing the external body of a vehicle.\n2. Making adjustments to a vehicle which involves altering its dimensions, weight, or engine power.\n3. Changing the shape or color of a vehicle.\n4. Removing a vehicle\'s chassis number. Any person in violation of the above shall be punished by a fine not less than 10,000 riyals and not exceeding 50,000 riyals, as well as closure of the repair shop for a period not exceeding three months. In case of repetition, the fine imposed for the first violation shall be doubled, as well as closure of the repair shop for a period not exceeding six months. If the same violation is committed for the third time, the fine imposed for the second violation shall be doubled, in addition to permanent closure of the repair shop.\n',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.14,
                    letterSpacing: -0.7000000834,
                    color: Color(0xff000000),
                  ),
                ),

                SizedBox(height: 30,),
                Center(
                  child: Text(
                    'Article 65',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  'Vehicles damaged beyond repair - or parts thereof - may not be sold or bought except in accordance with rules set by the competent authority. Violators shall be punished by a fine of 2,000 riyals for the first violation. If the violation is repeated, the fine imposed for the first violation shall be doubled. If the violation is repeated for the second time, a fine of 5,000 riyals shall be imposed. In case of further repetition, the violator shall be referred to the competent court, in accordance with statutory procedures, to take necessary action.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.14,
                    letterSpacing: -0.7000000834,
                    color: Color(0xff000000),
                  ),
                ),

                SizedBox(height: 20,),
              ],
            ),

          )),

    );
  }
}
