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
        margin: EdgeInsets.only(left: 15),
        child: Text(
          '\n\nArticle 22 \n\nLegal weights and dimensions set for vehicles must be complied with. \n\nArticle 23 \n\nDrafting and amending rules and procedures for detecting violations of prescribed weights and dimensions as well as determining the categories of such violations and the fines collected for each violation according to its gravity to a maximum of 100,000 riyals regardless of the number of violations shall be made by agreement between the Minister of Interior and the Minister ofTransport.\n\nArticle 24\n\nAll vehicles shall conform to the specifications and standards approved by theSaudi Arabian Standards Organization.\n\nArticle 25\n\nNo vehicle may be altered by changing its color, features, standard equipment,capacity, or dimensions without obtaining prior permission from the competent authority.\n\nArticle 26\n\nVehicles of all types shall undergo a periodic technical inspection to ensure they are fit for use, subject to the conditions set by the Regulations.\n\nArticle 27\n\nTransporting non-divisible loads with weights and dimensions exceeding legal limits may be permitted subject to conditions and procedures set by the Minister of Interior and the Minister of Transport.\n\nArticle 28\n\nA driver shall be liable for any injury to persons or property, private or public,due to transporting loads in violation of legal weights and dimensions, or not observing rules of safe loading, unless the liability of another person is established.\n\nArticle 29\n\nIt shall be prohibited to install or use unauthorized audible or visual warning systems in vehicles.\n\nArticle 30\n\nTrailers and disabled vehicles must, when towed, be fitted with rear and sidelights or reflectors to make them visible.\n\nArticle 31\n\nLarge vehicles such as trucks, buses, and construction vehicles as well as vehicles pulled by animals must be fitted with rear and side lights or reflectors.',
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
