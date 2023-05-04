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
  final users = FirebaseAuth.instance.currentUser!;

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

  Future<void>updateUserData(String name, String nickName, String email,
      String birthDate, String gender, String city) async {
    CollectionReference userRef = FirebaseFirestore.instance.collection("Users");

    await userRef.doc(users.uid.toString()).set({
      "name": name,
      "nick name": nickName,
      "email": email,
      "birth date": birthDate,
      "gender": gender,
      "city": city
    })
        .then((value) => print("User data updated"))
        .catchError((error) => print("Failed to update user data: $error"));
  }

  // Future<void> updateUserData(String name, String nickName, String email, String birthDate, String gender, String city) async {
  //   try {
  //     final userRef = FirebaseFirestore.instance.collection("Users");
  //     final userDoc = userRef.doc(users.uid!);
  //     final userDocSnapshot = await userDoc.get();
  //
  //     if (!userDocSnapshot.exists) {
  //       // Document does not exist
  //       print("Error: Document does not exist");
  //       return;
  //     }
  //
  //     final dataToUpdate = {
  //       "name": name,
  //       "nick name": nickName,
  //       "email": email,
  //       "birth date": birthDate,
  //       "gender": gender,
  //       "city": city
  //     };
  //
  //     // Only update fields that are not null
  //     dataToUpdate.removeWhere((key, value) => value == null);
  //
  //     await userDoc.set(dataToUpdate);
  //
  //     print("User data updated successfully");
  //   } catch (e) {
  //     print("Error updating user data: $e");
  //   }
  // }

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
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30),
                        height: 50,
                        width: double.infinity,
                        child: TextField(
                          //controller: _nameController,
                          controller: _nameController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff1d1a20)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfcec255a)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Name',
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            fillColor: Color(0xffffffff),
                            filled: true,
                          ),
                          //  onChanged: print(_nameController.text);
                        ),
                      ), // Name Field



                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30),
                        height: 50,
                        width: double.infinity,
                        child: TextField(
                          controller: _nickNameController,
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
                            labelText: 'Nick Name',
                            labelStyle: TextStyle(
                              color: Colors.black,
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
                        margin: EdgeInsets.only(left: 30, right: 30),
                        height: 50,
                        width: double.infinity,
                        child: TextField(
                          controller: _emailController,
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
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.black,
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
                        margin: EdgeInsets.only(left: 30, right: 30),
                        child: Row(children: [
                          Container(
                            width: 154,
                            height: 50,
                            child: TextField(
                              controller: _birthDateController,
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
                                labelText: 'Birth Date',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                fillColor: Color(0xffffffff),
                                filled: true,
                              ),
                            ), // Birth Date Feild
                          ),
                          SizedBox(
                            width: 23,
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 23),
                            width: 154,
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
                        margin: EdgeInsets.only(left: 30, right: 30),
                        child: Row(children: [
                          Container(
                            width: 154,
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
                            width: 154,
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
                        margin: EdgeInsets.only(left: 30, right: 30),
                        child: Row(children: [
                          Container(
                            width: 154,
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
                                //hintText: 'Name',
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
                            width: 154,
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
                        margin: EdgeInsets.only(left: 35,right: 35),
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Profile_()),
                            );
                          },
                        ),
                      ), // Confirm Feild

                      ElevatedButton(
                        onPressed: () async {
                          try {
                            updateUserData(_nameController.text, _nickNameController.text,
                                _emailController.text, _birthDateController.text,
                                _genderController.text, _cityController.text);

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Profile updated successfully!')),
                            );
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Error updating profile: $e')),
                            );
                          }
                        },
                        child: Text('Save'),
                      ),


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