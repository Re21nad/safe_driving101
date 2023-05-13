import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Law7 extends StatefulWidget {
  const Law7({Key? key}) : super(key: key);

  @override
  State<Law7> createState() => _Law7State();
}

class _Law7State extends State<Law7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Detecting and Recording Violations and \nDetermining Penalties',
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
        margin: EdgeInsets.only(left: 15),
        child: Text(
          '\n\nArticle 66\n\nThe Minister of Interior – or his designee – shall determine the authorities in charge of detecting and recording violations of the provisions of this Law.\n\nArticle 67\n\nCompetent courts shall decide cases of traffic accidents and disputes.\n\nArticle 68\n\nWithout prejudice to any harsher penalty provided for in any other law, any person committing any of the violations stated in the annexed List of Violations shall be punished as follows:\n1. A fine not less than 100 riyals and not exceeding 150 riyals for violations listed in the annexed List of Violations (No. 1). For violation (No. 6) of the same List, in addition to the fine, the vehicle shall be impounded if the driver cannot be reached or fails to respond.\n2. A fine not less than 150 riyals and not exceeding 300 riyals for violations listed in the annexed List of Violations (No. 2). For violation (No. 15) of the same List, in addition to the fine, the vehicle shall be impounded until the violation is rectified.\n3. A fine not less than 300 riyals and not exceeding 500 riyals for violations listed in the annexed List of Violations (No. 3).\n4. A fine not less than 500 riyals and not exceeding 900 riyals for violations listed in the annexed List of Violations (No. 4). For violation (No. 20) of the same List, in addition to the fine, the vehicle shall be impounded if the driver cannot be reached or fails to respond. For violations (Nos. 21-25) of the same List, in addition to the fine, the vehicle shall be impounded until the violation is rectified.\n5. A fine not less than 1,000 riyals and not exceeding 2,000 riyals for violations listed in the annexed List of Violations (No. 5). For violations (Nos. 23-25) of the same List, in addition to the fine, the vehicle shall be impounded until the violation is rectified.\n6. A fine not less than 3,000 riyals and not exceeding 6,000 riyals for violations listed in the annexed List of Violations (No. 6). For violations (Nos. 11-14) of the same List, in addition to the fine, the vehicle shall be impounded until the violation is rectified.\n7. A fine not less than 5,000 riyals and not exceeding 10,000 riyals for violations listed in the annexed List of Violations (No. 7). For violations (Nos. 4-5) of the same List, in addition to the fine, the vehicle shall be impounded until the violation is rectified.\n8. A fine shall be imposed for exceeding the speed limit in accordance withAnnex (No. 8).\n\nArticle 69\n\nDrifting is a traffic violation. Any person committing such violation shall be punished as follows:\na) First offense: Impounding the vehicle for 15 days, a fine of 20,000 riyals, and referring the violator to the competent court for consideration of imprisonment.\nb) Second offense: Impounding the vehicle for one month, a fine of 40,000 riyals, and referring the violator to the competent court for consideration of imprisonment.\nc) Third offense: Impounding the vehicle, a fine of 60,000 riyals, and referring the violator to the competent court for consideration of either confiscating the vehicle or imposing a fine equal to the value of the rented or stolen vehicle, in addition to imprisonment. Rented or stolen vehicles shall not be impounded or confiscated.\n\nArticle 70\n\nSubject to Articles 12 and 46 of this Law, any person permitting seizure of a vehicle license or driving license, or holding or offering either of them in pledge shall be punished by a fine not less than 1,000 riyals and not exceeding 2,000 riyals.\n\nArticle 71\n\nFailure to renew a driving or vehicle license shall be subject to a default fine of 100 riyals for each year or part thereof with a maximum of 300 riyals. The fine shall be imposed 60 days following the expiry date of the license.\n\nArticle 72\n\nA. Any person found in violation of the provisions of paragraph (a) of Article 21 of this Law shall be punished by a fine of 100,000 riyals, in addition to the closure of the showroom subject of the violation until a license is obtained.\nB. Any person found in violation of the provisions of sub-paragraphs (1), (2),(3), and (4) of paragraph (b) of Article 21 of this Law shall be punished by a fine of 1,500 riyals for the first violation. Such fine shall be doubled if the violation is committed for the second time. If the violation is committed for the third time, a fine of 8,000 riyals shall be imposed, in addition to the closure of the vehicle showroom for one month. If the violation is committed for the fourth time, the license of the vehicle showroom shall be revoked.\nC. Any person found in violation of any of the provisions of sub-paragraphs (5),(6), and (7) of paragraph (b) of Article 21 of this Law shall be punished by a fine not less than 10,000 riyals and not exceeding 50,000 riyals for the first violation. If the violation is committed for the second time, the fine imposed for the first violation shall be doubled. If the violation is committed for the third time, the fine imposed for the second violation shall be doubled, in addition to the closure of the vehicle showroom for one month. If the violation is committed for the fourth time, the license of the vehicle showroom shall be revoked.\n\nArticle 73\n\n1. Detection and recording of traffic violations shall be entrusted with the agencies designated by the Minister of Interior in accordance with Article 66 of this Law. The Regulations shall determine the manner of detection and recording of violations, including the basic information of the violation, as well as the maximum and minimum limits of the fine.\n2. Subject to Articles 74, 75, and 77 of this Law, fines shall be issued in their minimum limit, and they may be issued in their maximum limit in cases of aggravating circumstances pursuant to a decision by a committee(s) formed by the Minister. The Regulations shall determine such aggravating circumstances and the committee\'s work procedures.\n\nArticle 74\n\nIn case of repetition of violations jeopardizing public safety within a year from the date of commission of the first violation, the competent authority shall impose the maximum fine on the violator. If the violation is committed for the third time within the same year, the violator shall be referred to the competent court - in accordance with statutory procedures - to consider imposing the punishment of imprisonment for a term not exceeding one year, unless the court decides to double the fine imposed for the second violation. The Regulations shall specify violations that jeopardize public safety and procedures for referring violators to court.\n\nArticle 75\n\n1. A violator may appeal the violation before the competent court within 30 days from the date of notification thereof. The Regulations shall determine the manner of such notification. The court may consider the appeal after the lapse of such period if the appellant provides an acceptable justification.\n2. Subject to paragraph (2) of Article 73 of this Law, the violator must pay the fine if the period set for appeal, as stipulated in paragraph (1) of this Article, expires without filing an appeal, if the competent court rejects such appeal,or if a judgment amending the fine imposed for the violation is issued.\n3. If the fine of the violation, along with late payment fees, remain unpaid, the competent authority shall notify the violator using appropriate means. If the amount of such fines reaches 20,000 riyals or more, or if a period of six months lapses from the date of notification without payment, the violator shall be notified that he must pay such fines within 30 days. If he fails to pay after the lapse of said period, he shall be referred to the competent court, in accordance with statutory procedures, to consider suspension of all or someof the government services provided to him, pending payment of due fines.\n\nArticle 76\n\nFor every violation provided for in this Law, there shall be a number of point corresponding to the gravity of the violation to public safety - to be recorded in the violator\'s record. If the number of violation points exceeds the maximum permitted limit, the driving license shall be suspended. The Regulations shall specify the relevant rules and procedures as well as suspension periods.\n\nArticle 77\n\nWithout prejudice to the penalties imposed against the driver, if the vehicle\'s owner, designated driver, or possessor allows any person not holding a driving license to drive the vehicle, he shall be subject to a fine not less than 1,000 riyals and not more than 2,000 riyals. In case this results in a traffic accident,both persons shall be jointly liable subject to the discretion of the competent court.\n\nArticle 78\n\nIf a vehicle is sold or damaged beyond repair outside the Kingdom, the competent authority shall be notified thereof in order to revoke its registration; the vehicle license and registration number plate shall be surrendered to said authority. Any person found in violation of the above shall be subject to a fine not exceeding 10,000 riyals.\n\nArticle 79\n\n1. Vehicles impounded by the competent authority, due to their owners’commission of traffic violations requiring impoundment in accordance with the provisions of this Law, or impounded due to traffic accidents shall be sold by public auction unless claimed by the owners, their designees, or heirs within a period of 90 days from the date of impoundment. The vehicle\'s sale proceeds shall be used to pay any fines as well as towing and impoundment fees pending on the vehicle, and the remaining amount shall be deposited with the General Commission for Guardianship over Property of Minors andThose of Similar Status, until claimed by the owner or heirs. Procedures for sale of such vehicles shall be specified by the Regulations.\n2. Unpaid traffic violation fines pending on deceased persons shall be waived.',
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
