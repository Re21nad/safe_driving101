import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:safe_driving101/read%20data/pages/profile.dart';

class Users {
  final String name;
  final String nickName;
  final String email;
  final String birthDate;
  final String gender;
  final String city;

  Users({
    required this.name,
    required this.nickName,
    required this.email,
    required this.birthDate,
    required this.gender,
    required this.city,
  });
}

class UserManagement {
  storeNewUser(Users user, context) async {
    var firebaseUser = FirebaseAuth.instance.currentUser;

    if (firebaseUser != null) {
      FirebaseFirestore.instance
          .collection("Users")
          .doc(firebaseUser.uid)
          .set({
        'name': user.name,
        'nick name': user.nickName,
        'email': user.email,
        'birth date': user.birthDate,
        'gender': user.gender,
        'city': user.city,
      }).then((value) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile_()),
        );
      });
    }
  }
}
