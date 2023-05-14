import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/Guides/Choose_car/choose_car1.dart';
import 'package:safe_driving101/read%20data/Guides/Driving_license/driving_license.dart';
import 'package:safe_driving101/read%20data/Guides/Guide1/tools1.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/manage_dangers.dart';
import 'package:safe_driving101/read%20data/Guides/Traffic_Infraction/traffic_infraction.dart';

class Guides extends StatefulWidget {
  const Guides({Key? key}) : super(key: key);

  @override
  State<Guides> createState() => _GuidesState();
}

class _GuidesState extends State<Guides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Guides',
          textAlign: TextAlign.center,
          style: GoogleFonts.domine(
            fontSize: 25,
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
            padding: EdgeInsets.fromLTRB(13, 5, 13, 0),
            width: double.infinity,
            height: 715,
            color: Colors.white,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 50),
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
              ),
              SizedBox(height: 10,),

              // Expanded(child: ListView()),

              Container(
                // autogroupyxn5XgR (BEu2v5TDdPUCapmWXeyXN5)
                margin: EdgeInsets.fromLTRB(25, 30, 20, 20),
                width: double.infinity,
                height: 167,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tools1()),
                          );
                        },
                        child: Container(
                          // autogrouppgysF6d (BEu3KQ7h5sjLiRSs21PGys)
                          margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                          padding: EdgeInsets.fromLTRB(5, 23, 15, 23),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
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
                                constraints: BoxConstraints(
                                  maxWidth: 143,
                                ),
                                child: Text(
                                  'Tools using in \nthe car',
                                  style: GoogleFonts.domine(
                                    fontSize: 15,
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


                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ChooseCar()));
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                          primary: Color(0xfcc4eaf6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // choosingacarnuB (1:76)
                              margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                              child: Text(
                                'Choosing a car',
                                style: GoogleFonts.domine(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  height: 1.35,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // image24hFT (1:77)
                              margin: EdgeInsets.fromLTRB(50, 20, 0, 0),
                              width: 75,
                              height: 75,
                              child: Image.asset(
                                'images/image-24.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),


                    ]),
              ),
              Container(
                // autogroupgxhxbbj (BEu3tdfKJyCiT9cYN7GXHX)
                margin: EdgeInsets.only(left: 22.1766662598),
                width: 390,
                height: 350,
                child: Stack(
                  children: [
                    Positioned(

                      child: Container(
                        width: 290,
                        height: 418.14,
                        child: Stack(children: [

                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Driving_license()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xfcfee0e0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26),
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.only(right: 5),
                              width: 129,
                              height: 350,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                                    child: Text(
                                      'Driving license',
                                      style: GoogleFonts.domine(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        height: 1.35,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 50),
                                    width: 120,
                                    height: 120,
                                    child: Image.asset(
                                      'images/license.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ]),
                      ),
                    ),

                    Positioned(
                      left: 170,
                      child: ElevatedButton(
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Manage()),
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          primary: Color(0xfc161853),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: Container(
                          //padding: EdgeInsets.only(right: 10 ),
                          width: 129,
                          height: 167,
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // choosingacarnuB (1:76)
                                margin: EdgeInsets.fromLTRB(0, 15, 50, 10),
                                child: Text(
                                  'Manage \ndangers',
                                  style: GoogleFonts.domine(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    height: 1.35,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                // image24hFT (1:77)
                                margin: EdgeInsets.fromLTRB(50, 5, 0, 0),
                                width: 75,
                                height: 75,
                                child: Image.asset(
                                  'images/image-25-83X.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),),


                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Traffic()),
                        );
                      },
                      child: Container(
                        // autogrouppgysF6d (BEu3KQ7h5sjLiRSs21PGys)
                        margin: EdgeInsets.only(left: 170, top: 180, right: 15),
                        //padding: EdgeInsets.fromLTRB(5, 25, 15, 25),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'images/car 4.jpg',
                            ),
                          ),
                        ),

                        child: Align(
                          // toolsusinginthecarj1o (1:68)
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            child: Container(
                              margin: EdgeInsets.only(top: 20,left: 17,right: 10),
                              child: Text(
                                'Traffic\ninfraction ',
                                style: GoogleFonts.domine(
                                  fontSize: 15,
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
            ]),
          ),
        )
    );
  }
}
