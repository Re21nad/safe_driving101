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
  List<String> searchData = [
    'Scope and Definitions',
    'Vehicle Registration and Licensing',
    'Weights, Dimensions, and Inspection of Vehicles',
    'Driving Licenses',
    'Rules of the Road',
    'Accidents',
    'Detecting and Recording Violations and Determining Penalties',
    'General Provisions',
  ];
  List<String> searchResults = [];

  void search(String query) {
    setState(() {
      if (query.isNotEmpty) {
        searchResults = searchData
            .where((data) => data.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        searchResults = List.from(searchData);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    search('');
  }

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
          margin: EdgeInsets.only(left: 40, right: 40),
          width: double.infinity,
          height: 1150,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                // margin: EdgeInsets.only(left: 5, right: 5),
                width: double.infinity,
                height: 200,
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
              ), // Picture

              SizedBox(
                height: 25,
              ),
              Container(
                //margin: EdgeInsets.only(top: 50),
                width: double.infinity,
                height: 50,

                child: TextField(
                  onChanged: search,
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
              ), //Search

              SizedBox(
                height: 35,
              ),
              SingleChildScrollView(
                child: Container(
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
                          '   ___________________________',
                          style: GoogleFonts.domine(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ), // Header

              SizedBox(
                height: 20,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: double.infinity,
                height: 695,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(),
                  // scrollDirection: Axis.vertical,
                  itemCount: searchResults.length,
                  // separatorBuilder: (context, _) =>
                  //     SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    switch (searchResults[index]) {
                      case 'Scope and Definitions':
                        return Container(
                          width: double.infinity,
                          height: 72,
                          child: Material(
                            elevation: 7,
                            shadowColor: Colors.black.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(26),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Law1()));
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return Law1();
                                    },
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      // Use FadeTransition for the transition animation
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
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
                                      'Scope and Definitions',
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
                        );

                      case 'Vehicle Registration and Licensing': // Law 1

                        // SizedBox(
                        //   height: 20,
                        // );

                         return Container(
                          width: double.infinity,
                          height: 72,
                          child: Material(
                            elevation: 7,
                            shadowColor: Colors.black.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(26),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Law2()));
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return Law2();
                                    },
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      // Use FadeTransition for the transition animation
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
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
                                      'Vehicle Registration and Licensing',
                                      style: GoogleFonts.domine(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );

                      case 'Weights, Dimensions, and Inspection of Vehicles': // Law 2

                        // SizedBox(
                        //   height: 20,
                        // );

                        return Container(
                          width: double.infinity,
                          height: 72,
                          child: Material(
                            elevation: 7,
                            shadowColor: Colors.black.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(26),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Law3()));
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return Law3();
                                    },
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      // Use FadeTransition for the transition animation
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
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
                                      'Weights, Dimensions, and Inspection of Vehicles',
                                      style: GoogleFonts.domine(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ); // Law 3

                      case 'Driving Licenses':
                        // SizedBox(
                        //   height: 20,
                        // );

                        return Container(
                          width: double.infinity,
                          height: 72,
                          child: Material(
                            elevation: 7,
                            shadowColor: Colors.black.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(26),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Law4()));
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return Law4();
                                    },
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      // Use FadeTransition for the transition animation
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
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
                                      'Driving Licenses',
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
                        ); // Law 4

                      case 'Rules of the Road':
                        // SizedBox(
                        //   height: 20,
                        // );

                        return Container(
                          width: double.infinity,
                          height: 72,
                          child: Material(
                            elevation: 7,
                            shadowColor: Colors.black.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(26),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Law5()));
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return Law5();
                                    },
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      // Use FadeTransition for the transition animation
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
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
                                      'Rules of the Road',
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
                        ); // Law 5

                      case 'Accidents':
                        // SizedBox(
                        //   height: 20,
                        // );

                        return Container(
                          width: double.infinity,
                          height: 72,
                          child: Material(
                            elevation: 7,
                            shadowColor: Colors.black.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(26),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Law6()));
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return Law6();
                                    },
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      // Use FadeTransition for the transition animation
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
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
                                      'Accidents',
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
                        );
                         // Law 6
                      case 'Detecting and Recording Violations and Determining Penalties':
                        // SizedBox(
                        //   height: 20,
                        // );

                        return Container(
                          width: double.infinity,
                          height: 72,
                          child: Material(
                            elevation: 7,
                            shadowColor: Colors.black.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(26),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Law7()));
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return Law7();
                                    },
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      // Use FadeTransition for the transition animation
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
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
                                      'Detecting and Recording Violations',
                                      style: GoogleFonts.domine(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ); // Law 7

                      case 'General Provisions':
                        // SizedBox(
                        //   height: 20,
                        // );

                        return Container(
                          width: double.infinity,
                          height: 72,
                          child: Material(
                            elevation: 7,
                            shadowColor: Colors.black.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(26),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Law8()));
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return Law8();
                                    },
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      // Use FadeTransition for the transition animation
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
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
                                      'General Provisions',
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
                        ); // Law 8

                      // default:
                      //   return SizedBox.shrink();// Return an empty SizedBox as a placeholder
                    };
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
