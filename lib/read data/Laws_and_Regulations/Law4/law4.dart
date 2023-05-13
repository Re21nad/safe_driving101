import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Law4 extends StatefulWidget {
  const Law4({Key? key}) : super(key: key);

  @override
  State<Law4> createState() => _Law4State();
}

class _Law4State extends State<Law4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Driving Licenses',
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
          '\n\nArticle 32\n\nIt shall be prohibited for any person to drive a vehicle prior to obtaining a driving license in accordance with the provisions of this Law and its Regulations.\n\nArticle 33\n\nA driver must carry a valid driving license when driving a vehicle. Law enforcement officers shall have the right to examine, but not seize, such license.\n\nArticle 34\n\nHolders of military driving licenses may not drive civilian vehicles without obtaining a driving license from the competent authority.\n\nArticle 35\n\nDriving licenses shall be classified as follows:\n1. Private driving license.\n2. Public driving license.\n3. Construction vehicle driving license.\n4. Motorcycle driving license.\nCategories and specifications of such licenses shall be specified by the Regulations.\n\nArticle 36\n\nObtaining a driving license shall be subject to the following conditions:\n1. Reaching the age of eighteen years, for private and motorcycle driving licenses.\n2. Reaching the age of twenty years, for public and construction vehicle driving licenses.\n3. Applicants for public or construction vehicle driving licenses may not have been previously convicted of a crime of assault on person, honor, or property,unless rehabilitated.\n4. Applicants for licenses – regardless of type – may not have been convicted of using, manufacturing, trafficking, distributing, or possessing narcotic drugs, unless rehabilitated.\n5. Legal residency status, for non-Saudis.\n6. Being free of any disease or physical disability that inhibits driving the vehicle in question.\n7. Completing training hours at a driving school and passing the driving test. The Regulations shall specify the required number of training hours and the test relating to each license and conditions thereof.\n8. Payment of prescribed fees.\n9. Payment of outstanding traffic fines, if any.\n\nArticle 37\n\nAny person holding a valid foreign or international driving license recognized by the competent authority in the Kingdom shall be exempted from the required test set forth in paragraph (7) of Article 36 of this Law.\n\nArticle 38\n\nThe competent authority shall regulate the issuance of international driving licenses and customs transit books (Triptik), in accordance with the Regulations.\n1. Any person violating the rules set by the competent authority, in accordance with paragraph (1) of this Article, shall be punished by a fine not exceeding 100,000 riyals. The Regulations shall classify such violations and determine corresponding penalties, taking into consideration proportionality between the violation and the penalty.\n2. If the violation is repeated within a year from the date of commission of the first violation, the violator shall be punished by a fine not less than half the fine stipulated in paragraph (2) of this Article. If the violation is repeated for the second time within a year from the date of commission of the previous violation, the violator shall be punished by double the fine imposed for the second violation or revocation of the license, or both penalties.\n\nArticle 39\n\nNotwithstanding paragraph (1) of Article 36 of this Law, temporary driving licenses, valid for a period not exceeding one year, may be issued for persons of not less than 17 years of age, in accordance with controls specified by the Regulations.\n\nArticle 40\n\nRequirements for issuing driving licenses to members of diplomatic and consular missions as well as regional and international organizations accredited in the Kingdom shall be set upon agreement between the Minister of Interior and the Minister of Foreign Affairs.\n\nArticle 41\n\nThe validity of driving licenses of all types shall be set by the Regulations.\n\nArticle 42\n\nAn international and foreign driving license shall be valid for one year as of the date the holder of the license enters the Kingdom, or until said license expires,whichever is earlier.\n\nArticle 43\n\nA disabled person may obtain a driving license upon presenting an official medical report certifying that he is fit to drive, subject to controls set by theRegulations.\n\nArticle 44\n\nA driving license shall be renewed upon payment of prescribed t fees and relevant fines, if any; subject to conditions set by the Regulations.\n\nArticle 45\n\nLost or damaged driving licenses shall be replaced upon payment of prescribed fees and relevant fines, if any; subject to procedures set by the Regulations.\n\nArticle 46\n\nDriving licenses may not be seized, pledged, or held in pledge by others.\n\nArticle 47\n\n1. Driving schools may not be established or operated without obtaining a license from the competent authority. Driving instructors may not practice the profession without a license.Special regulations issued by the Minister of Interior shall set the necessary provisions.\n2. Any person violating the provisions of paragraph (1) of this Article shall be punished by one or more of the following penalties:\na) A warning.\nb) A fine not exceeding 200,000 riyals.\nc) Suspension of licensing or license for a period not exceeding six months. The Regulations shall classify the violations and determine corresponding penalties, taking into consideration proportionality between the violation and the penalty. If the violation is repeated within a year from the date of commission of the first violation, the violator shall be punished by double the fine imposed for the first violation or by any severer penalty in accordance with paragraph (2) of this Article. If the violation is repeated for the second time within a year from the date of commission of the previous violation, the violator shall be punished by double the fine imposed for the second violation or revocation of the license, or both penalties.\n\nArticle 48\n\nThe competent authority may revoke or refuse to renew a driving license if it is proven that the holder is incompetent or medically unfit to drive the vehicles subject of the license.\n\nArticle 49\n\nThe Minister of Interior may approve the establishment of civil non government societies for the purpose of educating citizens so as to minimize road accidents. The Regulations shall specify the duties and powers of such societies.',
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
