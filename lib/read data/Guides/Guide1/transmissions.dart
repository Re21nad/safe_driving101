import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transmissions extends StatelessWidget {
  const Transmissions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Transmission Types',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 19,
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
              SizedBox(height: 30,),
              Text(
                'Automatic Transmission',
                style: GoogleFonts.domine(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                textAlign: TextAlign.left, // Centering the text within the container
              ),
              SizedBox(height: 15,),

              Container(
                // margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'This device controls the \nspeed of the vehicle and \nis typically located to \nthe right of the driver. \nIt is shaped like a stick \nand is labeled with \na variety of letters and \nnumbers, each of which \nstands for a different \nfunction. These features \ncorrespond to various \ntransmission modes that \nthe driver can choose from.',
                      style: GoogleFonts.rokkitt(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.35,
                        color: Colors.black, // Changing the text color to white for better visibility
                      ),
                      textAlign: TextAlign.left, // Centering the text within the container
                    ),


                    Container(
                       margin: EdgeInsets.symmetric(vertical: 70),
                      height: 175,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'images/automatic.jpg',
                          ),
                        ),
                      ),

                    ),

                  ],
                ),
              ),

              SizedBox(height: 20,),
              Text(
                '_______________________________________',
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                textAlign: TextAlign.left, // Centering the text within the container
              ),

              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/P.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 27),
                      child: Text(
                        'Standing position',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rokkitt(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          height: 1.14,
                          letterSpacing: -0.7000000834,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/R.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 27),
                      child: Text(
                        'Reverse drive mode',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rokkitt(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          height: 1.14,
                          letterSpacing: -0.7000000834,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/N.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 27,vertical: 27),
                      child: Text(
                        'Free mode for \ntransmission',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rokkitt(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          height: 1.14,
                          letterSpacing: -0.7000000834,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/D.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 27),
                      child: Text(
                        'Forward motion mode',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rokkitt(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          height: 1.14,
                          letterSpacing: -0.7000000834,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/11.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 27,vertical: 27),
                      child: Text(
                        'First gear of the \ntransmission',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rokkitt(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          height: 1.14,
                          letterSpacing: -0.7000000834,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/22.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 27),
                      child: Text(
                        '2nd gear transmission \nmode',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rokkitt(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          height: 1.14,
                          letterSpacing: -0.7000000834,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/M.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,

                    ),
                    SizedBox(width: 15,),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 27),
                      child: Text(
                        'Manual transmission \nposition',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rokkitt(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          height: 1.14,
                          letterSpacing: -0.7000000834,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
