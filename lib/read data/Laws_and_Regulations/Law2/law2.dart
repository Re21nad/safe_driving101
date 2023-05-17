import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Law2 extends StatefulWidget {
  const Law2({Key? key}) : super(key: key);

  @override
  State<Law2> createState() => _Law2State();
}

class _Law2State extends State<Law2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Vehicle Registration and Licensing',
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
                    'Article 3',
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
                  'A. Each vehicle shall carry a special number registered at the competent authority in accordance with the Regulations.\nB. The number of a vehicle’s license shall be the same as the number on the vehicle\'s license plate. If the number on the plate is changed, the number on the vehicle\'s license must be changed accordingly.',
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
                    'Article 4',
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
                  'Each vehicle – excluding motorcycles, trailers, and semi-trailers – must carry two clearly visible license plates displaying the registration number thereof: one on the front and the other on the rear end. A vehicle may not be operated without such license plates.',
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
                    'Article 5',
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
                  'A. Each motorcycle, trailer, and semi-trailer must carry one clearly visible license plate fitted on the rear end, and may not be operated without said plate. A trailer or semi-trailer must carry the same registration number as the tractor-trailers thereof.\nB. If a trailer\'s size does not obstruct the view of the tractor-trailer\'s license plate, the trailer shall be exempted from carrying a license plate.',
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
                    'Article 6',
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
                  'No vehicle may carry any license plates other than those issued by the competent authority.',
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
                    'Article 7',
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
                  'License plates are categorized as follows\n1. Private license plates which include the following:\n\na) Private vehicle license plates \nb) Private truck license plates\nc) Private bus license plates\n\n2. Public license plates which include the following:\n\na) Public truck license plates\nb) Public bus license plates\nc) Taxicab license plates\n\n3. Diplomatic and consular license plates\n4. Temporary license plates\n5. Construction vehicle license plates\n6. Export license plates\n7. Motorcycle license plates\n8. Vintage car license plates The Regulations shall determine the categories, specifications, conditions of issuance, and manner of preserving such license plates.',
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
                    'Article 8',
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
                  'A. No vehicle may be operated before registering said vehicle, paying the prescribed fees in accordance with the Fee Schedule annexed to this Law, issuing the vehicle license, and fitting the license plates in accordance with this Law and its Regulations, excluding military vehicles used for military purposes which do not normally use public roads.\nB. All due traffic fines must be paid prior to starting the process of issuing vehicle licenses.\nC. Any vehicle owner must insure his vehicle, in accordance with the Regulations.',
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
                    'Article 9',
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
                  'Ownership of vehicles may be transferred upon payment of prescribed fees. The registered owner of a vehicle shall remain responsible for all fees and liabilities regarding said vehicle, and he may recourse to the new owner for paid amounts. The Regulations shall set relevant procedures and conditions.',
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
                    'Article 10',
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
                  'The use of a vehicle may be changed upon application by the owner or a representative thereof, after changing the registration of said vehicle; subject to procedures and conditions set in the Regulations.',
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
                    'Article 11',
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
                  'A vehicle’s license must be kept therein while in operation, and law enforcement officers shall have the right to examine, but not seize, said license.',
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
                    'Article 12',
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
                  'Vehicle licenses may not be seized, pledged, or held in pledge by others.',
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
                    'Article 13',
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
                  'A. Vehicle licenses and license plates shall be issued upon payment of prescribed fees, subject to the conditions set in the Regulations.\nB. If vehicles owned by diplomatic missions are sold, the prescribed fees shall be collected, subject to the conditions set in the Regulations.',
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
                    'Article 14',
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
                  'A. The validity of all types of vehicle licenses shall be determined by the Regulations.\nB. Vehicle licenses shall be renewed upon payment of prescribed fees.',
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
                    'Article 15',
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
                  'A replacement of any lost or destroyed vehicle license or license plate shall be issued upon payment of prescribed fees, subject to the conditions set in the Regulations.',
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
                    'Article 16',
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
                  'No title transfer fees shall be collected for vehicles sold for the purpose of disassembling them and making use of their parts, in accordance with the Regulations.',
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
                    'Article 17',
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
                  'The owner of a vehicle may not allow others to drive said vehicle, except with authorization in accordance with the Regulations.',
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
                    'Article 18',
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
                  'Government agencies may not sell their vehicles without coordination with the competent authority.',
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
                    'Article 19',
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
                  'Construction vehicles shall be registered with the competent authority such that the owner thereof is known, license plates are fitted thereon, and owner ship transfer procedures and conditions for use and driving thereof are determined in accordance with the Regulations.',
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
                    'Article 20',
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
                  'The Minister of Interior may assign inspection and evidence collection in traffic accidents as well as towing and impounding vehicles and some other traffic services to the private sector in accordance with the provisions of the Regulations.',
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
                    'Article 21',
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
                  'A. No vehicle showroom may be established without obtaining a license from the competent authority and a commercial register.\nB. Vehicle showrooms are prohibited from the following:\n1. Allowing sold vehicles to leave showrooms prior to completion of ownership transfer procedures.\n2. Giving showroom sale contract forms or seals to a third party, or concluding sale contracts outside the premises of the showroom.\n3. Concluding a sale contract for a vehicle sustaining damage to its external body prior to its repair without authorization from the competent authority in accordance with the Regulations.\n4. Violating any of the requirements or rules set by the Regulations.\n5. Altering, changing, or scratching out data in sale records. Any necessary corrections shall be endorsed by affixing a seal thereon.\n6. Selling or leasing the showroom without the approval of the competent authority.\n7. Displaying a vehicle in the showroom that cannot be sold for security reasons.',
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
