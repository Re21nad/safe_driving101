import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Animal extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Animal Transgenes',
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
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Text(
                'Because it is impossible to predict what an animal will do when crossing the road, drivers should slow down as soon as they see one. They should also slow down if there is a sign instructing drivers to give preference to livestock when passing. Each year, serious collisions involving animals like camels and horses occur.',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),

              SizedBox(height: 50,),

              Image.asset(
                'images/Animal.jpg',
                width: 400,
                height: 200,
                fit: BoxFit.cover,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
