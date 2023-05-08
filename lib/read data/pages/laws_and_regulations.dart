import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/Laws_and_Regulations/Law1/law1.dart';
import 'package:safe_driving101/read%20data/Laws_and_Regulations/Law2/law2.dart';
import 'package:safe_driving101/read%20data/Laws_and_Regulations/Law3/law3.dart';
import 'package:safe_driving101/read%20data/Laws_and_Regulations/Law4/law4.dart';
import 'package:safe_driving101/read%20data/Laws_and_Regulations/Law5/law5.dart';
import 'package:safe_driving101/read%20data/Laws_and_Regulations/Law6/law6.dart';
import 'package:safe_driving101/read%20data/Laws_and_Regulations/Law7/law7.dart';
import 'package:safe_driving101/read%20data/Laws_and_Regulations/Law8/law8.dart';
class LawsAndRegulations extends StatefulWidget {
  const LawsAndRegulations({Key? key}) : super(key: key);

  @override
  State<LawsAndRegulations> createState() => _LawsAndRegulationsState();
}

class _LawsAndRegulationsState extends State<LawsAndRegulations> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Laws and Regulations',
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
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          width: double.infinity,
          child: Column(
            children: [

              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.only(left: 30,right: 30),
                width: double.infinity,
                height: 190,
                //color: Colors.indigo,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'images/car1.jpg',
                    ),
                  ),
                ),

              ),// Picture

              SizedBox(height: 25,),
              Container(
                //margin: EdgeInsets.only(top: 50),
                width: double.infinity,
                height: 50,

                child: TextField(
                  style: GoogleFonts.rokkitt(
                    //Color(0xffc2c5bc),
                    textStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey[900],
                    ),
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0x3fdadada),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "What are you looking for?",
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.grey,

                  ),
                ),
              ),//Search

              SizedBox(height: 35,),
              Container(
                margin: EdgeInsets.only(left: 23),
                width: double.infinity,
                height: 30,
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Laws',
                        style: GoogleFonts.domine(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '   _________________________________',
                        style: GoogleFonts.domine(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ), // Header

              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 72,
                child: Material(
                  elevation: 7,
                  shadowColor: Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(26),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Law1()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(26),
                          child: Image.asset(
                            'images/car 2.jpg',
                            width: double.infinity,
                            height: 72,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Laws 1',
                            style: GoogleFonts.domine(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), // Law 1

              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 72,
                child: Material(
                  elevation: 7,
                  shadowColor: Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(26),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Law2()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(26),
                          child: Image.asset(
                            'images/car 3.jpg',
                            width: double.infinity,
                            height: 72,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Laws 2',
                            style: GoogleFonts.domine(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),// Law 2


              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 72,
                child: Material(
                  elevation: 7,
                  shadowColor: Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(26),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Law3()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(26),
                          child: Image.asset(
                            'images/car 7.jpg',
                            width: double.infinity,
                            height: 72,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Laws 3',
                            style: GoogleFonts.domine(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),// Law 3

              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 72,
                child: Material(
                  elevation: 7,
                  shadowColor: Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(26),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Law4()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(26),
                          child: Image.asset(
                            'images/car 5.jpg',
                            width: double.infinity,
                            height: 72,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Laws 4',
                            style: GoogleFonts.domine(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),// Law 4


              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 72,
                child: Material(
                  elevation: 7,
                  shadowColor: Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(26),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Law5()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(26),
                          child: Image.asset(
                            'images/car 6.jpg',
                            width: double.infinity,
                            height: 72,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Laws 5',
                            style: GoogleFonts.domine(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),// Law 5


              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 72,
                child: Material(
                  elevation: 7,
                  shadowColor: Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(26),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Law6()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(26),
                          child: Image.asset(
                            'images/car 8.jpg',
                            width: double.infinity,
                            height: 72,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Laws 6',
                            style: GoogleFonts.domine(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),// Law 6


              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 72,
                child: Material(
                  elevation: 7,
                  shadowColor: Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(26),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Law7()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(26),
                          child: Image.asset(
                            'images/car 9.jpg',
                            width: double.infinity,
                            height: 72,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Laws 7',
                            style: GoogleFonts.domine(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),// Law 7


              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 72,
                child: Material(
                  elevation: 7,
                  shadowColor: Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(26),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Law8()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(26),
                          child: Image.asset(
                            'images/car 10.jpg',
                            width: double.infinity,
                            height: 72,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Laws 8',
                            style: GoogleFonts.domine(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),// Law 8

              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}