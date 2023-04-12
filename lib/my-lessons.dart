import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage1()));
}

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,

        title: Text(
          'My Lessons',
          textAlign: TextAlign.center,
          style: GoogleFonts.domine(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.7000000834,
            color: Color(0xff000000),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            // Add the desired functionality when the back button is pressed
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 26),
                height: 50,
                width: double.infinity,
                child: Text(
                  'Welcome back',
                  style: GoogleFonts.domine(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    height: 1.35,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 45),
                height: 30,
                width: double.infinity,
                child: Text(
                  'Renad13',
                  style: GoogleFonts.rokkitt(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xEC255A00),
                    height: 1.35,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 37),
                width: double.infinity,
                height: 20,
                child: Text(
                    '______________________________________________________________________________'),
              ),
              SizedBox(
                height: 33,
              ),
              // Container(
              //   margin: EdgeInsets.only(left: 26),
              //   width: double.infinity,
              //   height: 50,
              //   child: Text(
              //     'My Lessons...',
              //     style: GoogleFonts.domine(
              //       fontSize: 27,
              //       fontWeight: FontWeight.w700,
              //       color: Colors.black,
              //       height: 1.35,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
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
                    hintText: "eg: Traffic infraction",
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.grey,
                  ),
                ),
              ),// Search
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 50,
                child: Text(
                  'Recommended    __________________',
                  style: GoogleFonts.domine(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    height: 1.35,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 120,
                child: Row(
                  children: [
                    Container(
                      //margin: EdgeInsets.only(left: 13),
                      width: 120,
                      height: 120,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your desired onPressed functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xfc161853),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: Container(
                          //padding: EdgeInsets.only(right: 10 ),
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // choosingacarnuB (1:76)
                                margin: EdgeInsets.only(top: 10,right: 30),
                                child: Text(
                                  'Manage \ndangers',
                                  style: GoogleFonts.domine(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.35,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // image24hFT (1:77)
                                margin: EdgeInsets.only(left: 50),
                                width: 80,
                                height: 75,
                                child: Image.asset(
                                  'images/image-25-83X.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                    SizedBox(width: 15,),
                    InkWell(
                      onTap: () {
                        //Tools1();
                      },
                      child: Container(
                        // autogrouppgysF6d (BEu3KQ7h5sjLiRSs21PGys)
                        margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                        padding: EdgeInsets.fromLTRB(5, 23, 15, 23),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'images/rectangle-118-bg.png',
                            ),
                          ),
                        ),

                        child: Align(
                          // toolsusinginthecarj1o (1:68)
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            child: Container(
                              // constraints: BoxConstraints(
                              //   maxWidth: 143,
                              // ),
                              child: Text(
                                'Tools using in \nthe car',
                                style: GoogleFonts.domine(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  height: 1.35,
                                  color: Color(0xfcffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //SizedBox(width: 15,),
                    // Container(
                    //   //margin: EdgeInsets.only(left: 13),
                    //   width: 120,
                    //   height: 120,
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       // Add your desired onPressed functionality here
                    //     },
                    //     style: ElevatedButton.styleFrom(
                    //       primary: Color(0xfc161853),
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(24),
                    //       ),
                    //     ),
                    //     child: Container(
                    //       //padding: EdgeInsets.only(right: 10 ),
                    //       child: Column(
                    //         //crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           Container(
                    //             // choosingacarnuB (1:76)
                    //             margin: EdgeInsets.only(top: 10,right: 30),
                    //             child: Text(
                    //               'Manage \ndangers',
                    //               style: GoogleFonts.domine(
                    //                 fontSize: 10,
                    //                 fontWeight: FontWeight.w400,
                    //                 height: 1.35,
                    //                 color: Color(0xff000000),
                    //               ),
                    //             ),
                    //           ),
                    //           Container(
                    //             // image24hFT (1:77)
                    //             margin: EdgeInsets.only(left: 50),
                    //             width: 80,
                    //             height: 75,
                    //             child: Image.asset(
                    //               'images/image-25-83X.png',
                    //               fit: BoxFit.cover,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),


                  ],
                ),
              ),

              SizedBox(height: 40,),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 50,
                child: Text(
                  'Completed    __________________',
                  style: GoogleFonts.domine(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    height: 1.35,
                  ),
                ),
              ),

              //SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 120,
                child: Row(
                  children: [

                    InkWell(
                      onTap: () {
                        //Tools1();
                      },
                      child: Container(
                        // autogrouppgysF6d (BEu3KQ7h5sjLiRSs21PGys)
                        margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                        padding: EdgeInsets.fromLTRB(5, 23, 15, 23),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'images/rectangle-118-bg.png',
                            ),
                          ),
                        ),

                        child: Align(
                          // toolsusinginthecarj1o (1:68)
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            child: Container(
                              // constraints: BoxConstraints(
                              //   maxWidth: 143,
                              // ),
                              child: Text(
                                'Tools using in \nthe car',
                                style: GoogleFonts.domine(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  height: 1.35,
                                  color: Color(0xfcffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
