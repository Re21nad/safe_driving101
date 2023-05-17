import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/pages/profile.dart';

class EditProfilePage extends StatefulWidget {
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final CollectionReference usersCollection =
  FirebaseFirestore.instance.collection('Users');
  final users = FirebaseAuth.instance.currentUser!;

  DateTime date = DateTime.now();
  final _nameController = TextEditingController(text: '');
  final _nickNameController = TextEditingController(text: '');
  final _emailController = TextEditingController(text: '');
  final _birthDateController = TextEditingController(text: '');
  final _genderController = TextEditingController(text: '');
  final _cityController = TextEditingController(text: '');

  @override
  void dispose(){
    _nameController.dispose();
    _nickNameController.dispose();
    _emailController.dispose();
    _birthDateController.dispose();
    _genderController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  Future<void> updateProfile({
    required String name,
    required String nickname,
    required String email,
    required String birthDate,
    required String gender,
    required String city,
  }) async {
    try {
      final User? user = FirebaseAuth.instance.currentUser;
      final String? userEmail = user?.email;

      if (userEmail != null) {
        // Query the Firestore collection to find the document with matching email
        final QuerySnapshot snapshot = await usersCollection
            .where('email', isEqualTo: userEmail)
            .limit(1)
            .get();

        if (snapshot.size == 1) {
          final DocumentSnapshot document = snapshot.docs.first;

          // Update the profile fields in the document
          await document.reference.update({
            'name': name,
            'nick name': nickname,
            'email': email,
            'birth date': birthDate,
            'gender': gender,
            'city': city,
          });

          print('Profile updated successfully');
        } else {
          print('User document not found');
        }
      } else {
        print('User email is null');
      }
    } catch (e) {
      print('Error updating profile: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Edit Profile',
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
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('Users')
            .where("email", isEqualTo: users.email)
            .snapshots(),
        builder: ( context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Center(
            child: ListView(
              children: [snapshot.data!.docs[0]].map((document) {
                _nameController.text = document['name'];
                _nickNameController.text = document['nick name'];
                _emailController.text = document['email'];
                _birthDateController.text = document['birth date'];
                _genderController.text = document['gender'];
                _cityController.text = document['city'];

                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(

                        height: 50,
                        child: TextField(
                          controller: _nameController,
                          style: GoogleFonts.rokkitt(
                            //Color(0xffc2c5bc),
                            textStyle: TextStyle(
                              fontSize: 17.0, // Set font size
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Name',

                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff1d1a20)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfcec255a)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fillColor: Color(0xffffffff),
                            filled: true,
                          ),
                        ),
                      ), // Name Field

                      SizedBox(
                        height: 20,
                      ),
                      Container(

                        height: 50,
                        child: TextField(
                          controller: _nickNameController,
                          style: GoogleFonts.rokkitt(
                            //Color(0xffc2c5bc),
                            textStyle: TextStyle(
                              fontSize: 17.0, // Set font size
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Nick Name',

                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff1d1a20)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfcec255a)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fillColor: Color(0xffffffff),
                            filled: true,
                          ),
                        ),
                      ), // Nick Name Field


                      SizedBox(
                        height: 20,
                      ),

                      Container(

                        height: 50,
                        child: TextField(
                          controller: _emailController,
                          style: GoogleFonts.rokkitt(

                            textStyle: TextStyle(
                              fontSize: 17.0, // Set font size
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',

                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff1d1a20)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfcec255a)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fillColor: Color(0xffffffff),
                            filled: true,
                          ),
                        ),
                      ), // Email Feild


                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Container(
                                width: 154,
                                height: 50,
                                child: TextField(
                                  controller: _birthDateController,
                                  style: GoogleFonts.rokkitt(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1375,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                      labelText: 'Birth Date',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xff1d1a20)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xfcec255a)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),

                                    fillColor: Color(0xffffffff),
                                    filled: true,
                                    suffixIcon: SizedBox(
                                      width: 5,
                                      height: 5,
                                      child: GestureDetector(
                                        onTap: () async {
                                          final selectedDate = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1900),
                                            lastDate: DateTime(2100),
                                          );
                                          if (selectedDate != null) {
                                            setState(() {
                                              date = selectedDate;
                                            });
                                            final formattedDate =
                                                '${date.day}/${date.month}/${date.year}';
                                            _birthDateController.text = formattedDate;
                                          }
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 8),
                                          child: Image.asset(
                                            'images/datetoday.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                            width: 23,
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 23),
                            width: 159,
                            height: 50,

                            child: TextField(
                              controller: _genderController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff1d1a20)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfcec255a)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                //hintText: 'Name',
                                labelText: 'Gender',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                fillColor: Color(0xffffffff),
                                filled: true,
                              ),
                            ),
                          ), // Gender Feild
                        ]),
                      ),



                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: 30, right: 30),
                        child: Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                          Container(
                            width: 159,
                            height: 50,
                            child: TextField(
                              controller: _cityController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff1d1a20)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfcec255a)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                //hintText: 'Name',
                                labelText: 'City',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                fillColor: Color(0xffffffff),
                                filled: true,
                              ),

                            ),
                          ), // City Feild
                          SizedBox(
                            width: 23,
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 23),
                            width: 159,
                            height: 50,

                            child: TextFormField(
                              initialValue: 'English',
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff1d1a20)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfcec255a)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                //hintText: 'Name',
                                labelText: 'Language',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                fillColor: Color(0xffffffff),
                                filled: true,
                              ),
                            ),
                          ), // Language Feild
                        ]),
                      ),


                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: 30, right: 30),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Container(
                            width: 159,
                            height: 50,
                            child: TextFormField(
                              initialValue: '30 Hours',
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff1d1a20)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfcec255a)),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                labelText: 'Goal Hours',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                fillColor: Color(0xffffffff),
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 23,
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 23),
                            width: 159,
                            height: 50,

                            child: TextFormField(
                              initialValue: '19 Hours',
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff1d1a20)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfcec255a)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                //hintText: 'Name',
                                labelText: 'Completed Hours',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                fillColor: Color(0xffffffff),
                                filled: true,
                              ),
                            ),
                          ),
                        ]),
                      ), //Goal Hours


                      SizedBox(height: 35,),
                      Container(
                        // margin: EdgeInsets.only(left: 35,right: 35),
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(

                          child: Text(
                            'Comfirm',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.rokkitt(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              height: 1.1375,
                              color: Color(0xffffffff),
                            ),
                          ),

                          style: ElevatedButton.styleFrom(

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), // Adjust border radius as per your need
                            ),
                            primary: Color(0xfc161853), // Set the background color of the button
                          ),
                          onPressed: () async {
                            try {
                              await updateProfile(
                                name: _nameController.text,
                                nickname: _nickNameController.text,
                                email: _emailController.text,
                                birthDate: _birthDateController.text,
                                gender: _genderController.text,
                                city: _cityController.text,
                              );

                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Profile updated successfully!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.of(context).pop(),
                                      child: Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            } catch (e) {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Error updating profile'),
                                  content: Text('An error occurred while updating the profile: $e'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.of(context).pop(),
                                      child: Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                        ),
                      ), // Confirm Feild

                    ],
                  ),
                );
              }).toList(),
            ),


          );
        },
      ),
    );
  }
}