import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:safe_driving101/my-lessons.dart';

class User {
  final String name;
  final String nickName;
  final String email;
  final String birthDate;
  final String gender;
  final String city;

  User({
    required this.name,
    required this.nickName,
    required this.email,
    required this.birthDate,
    required this.gender,
    required this.city,
  });
}

class UserManagement {
  storeNewUser(User user, context) async {
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
          MaterialPageRoute(builder: (context) => HomePage1()),
        );
      });
    }
  }
}
