import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Law3 extends StatefulWidget {
  const Law3({Key? key}) : super(key: key);

  @override
  State<Law3> createState() => _Law3State();
}

class _Law3State extends State<Law3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Weights, Dimensions, and Inspection \nof Vehicles',
          textAlign: TextAlign.center,
          style: GoogleFonts.domine(
            fontSize: 13,
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
                    'Article 22',
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
                  'Legal weights and dimensions set for vehicles must be complied with. ',
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
                    'Article 23',
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
                  'Drafting and amending rules and procedures for detecting violations of prescribed weights and dimensions as well as determining the categories of such violations and the fines collected for each violation according to its gravity to a maximum of 100,000 riyals regardless of the number of violations shall be made by agreement between the Minister of Interior and the Minister ofTransport.',
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
                    'Article 24',
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
                  'All vehicles shall conform to the specifications and standards approved by theSaudi Arabian Standards Organization.',
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
                    'Article 25',
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
                  'No vehicle may be altered by changing its color, features, standard equipment,capacity, or dimensions without obtaining prior permission from the competent authority.',
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
                    'Article 26',
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
                  'Vehicles of all types shall undergo a periodic technical inspection to ensure they are fit for use, subject to the conditions set by the Regulations.',
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
                    'Article 27',
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
                  'Transporting non-divisible loads with weights and dimensions exceeding legal limits may be permitted subject to conditions and procedures set by the Minister of Interior and the Minister of Transport.',
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
                    'Article 28',
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
                  'A driver shall be liable for any injury to persons or property, private or public,due to transporting loads in violation of legal weights and dimensions, or not observing rules of safe loading, unless the liability of another person is established.',
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
                    'Article 29',
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
                  'It shall be prohibited to install or use unauthorized audible or visual warning systems in vehicles.',
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
                    'Article 30',
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
                  'Trailers and disabled vehicles must, when towed, be fitted with rear and sidelights or reflectors to make them visible.',
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
                    'Article 31',
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
                  'Large vehicles such as trucks, buses, and construction vehicles as well as vehicles pulled by animals must be fitted with rear and side lights or reflectors.',
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
          ),
      ),

    );
  }
}
