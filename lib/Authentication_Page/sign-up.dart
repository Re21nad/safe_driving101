import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/Authentication_Page/log-in.dart';
import 'package:safe_driving101/read%20data/homePage.dart';

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: signUp()));
// }

class signUp extends StatefulWidget {
  //final VoidCallback showLoginPage;
  const signUp({
    Key? key,
    //required this.showLoginPage,
  }) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;
  String? valueChoice1 = 'Gender';
  List<String> listItems1 = ['Gender', 'Male', 'Female'];
  String? valueChoice2 = 'City';
  List<String> listItems2 = ['City', 'Jeddah', 'Makkah', 'Madinah','Riyagh','Tabuk','Taif','Hail','Dahran'];
  DateTime date = DateTime.now();
  final _nameController = TextEditingController();
  final _nickNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _birthDateController = TextEditingController();
  final _genderController = TextEditingController();
  final _cityController = TextEditingController();
  bool loggedIn = false;

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }
  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _confirmPasswordVisible = !_confirmPasswordVisible;
    });
  }
  @override
  void dispose() {
    _nameController.dispose();
    _nickNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _birthDateController.dispose();
    _genderController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: GoogleFonts.rokkitt(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          height: 1.1375,
          color: Color(0xff1d1a20),
        ),
      ),
    );
  }

  Future<void> sign_up() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Signing Up'),
          content: Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
        );
      },
    );

    setState(() {
      loggedIn = true;
    });

    if (passwordConfirm()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        addUserDetail(
          _nameController.text.trim(),
          _nickNameController.text.trim(),
          _emailController.text.trim(),
          _birthDateController.text.trim(),
          _genderController.text.trim(),
          _cityController.text.trim(),
        );

        Navigator.of(context).pop(); // Dismiss the loading dialog

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Sign Up Successful'),
              content: Text('You have successfully signed up.'),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.pop(context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => LoginScreen()),
                    // );
                  },
                ),
              ],
            );
          },
        );
      } catch (error) {
        Navigator.of(context).pop(); // Dismiss the loading dialog

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Sign Up Failed'),
              content: Text('An error occurred while signing up: $error'),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    } else {
      Navigator.of(context).pop(); // Dismiss the loading dialog

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Sign Up Failed'),
            content: Text('Password confirmation does not match.'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  // Future<void> addUserDetail(String name, String nickName, String email,
  //     String birthDate, String gender, String city) async {
  //   await FirebaseFirestore.instance.collection("Users").add({
  //     'name': name,
  //     'nick name': nickName,
  //     'email': email,
  //     'birth date': birthDate,
  //     'gender': gender,
  //     'city': city,
  //   });

  Future<void> addUserDetail(String name, String nickName, String email,
      String birthDate, String gender, String city) async {
    await FirebaseFirestore.instance.collection("Users").add({
      'name': name,
      'nick name': nickName,
      'email': email,
      'birth date': birthDate,
      'gender': gender,
      'city': city,
      'levels': ['Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner'],
    });
  }

  bool passwordConfirm() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim())
      return true;
    else
      return false;
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
          'Sign up',
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
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  Container(
                    width: 154,
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
                  ), // Name Feild
                  Container(
                    margin: EdgeInsets.only(left: 23),
                    width: 154,
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

                        //labelStyle: TextStyle(color: Color(0xfcec255a)),
                        //hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1d1a20)),
                          borderRadius: BorderRadius.circular(10),
                          //color: Color(0xffffffff),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xfcec255a)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //hintText: 'E-mail',
                        fillColor: Color(0xffffffff),
                        filled: true,
                      ),
                    ),
                  ), // Nick Name Feild
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: _emailController,
                style: GoogleFonts.rokkitt(
                  //Color(0xffc2c5bc),
                  textStyle: TextStyle(
                    fontSize: 17.0, // Set font size
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-mail',

                  //labelStyle: TextStyle(color: Color(0xfcec255a)),
                  //hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff1d1a20)),
                    borderRadius: BorderRadius.circular(10),
                    //color: Color(0xffffffff),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xfcec255a)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //hintText: 'E-mail',
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
              height: 50,
              width: double.infinity,
              child: TextField(
                // obscureText: true,
                controller: _passwordController,
                obscureText: !_passwordVisible,
                style: GoogleFonts.rokkitt(
                  //Color(0xffc2c5bc),
                  textStyle: TextStyle(
                    fontSize: 17.0, // Set font size
                  ),
                ),
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off),
                    onPressed: _togglePasswordVisibility,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff1d1a20)),
                    borderRadius: BorderRadius.circular(10),
                    //color: Color(0xffffffff),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xfcec255a)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //hintText: 'Password',
                  fillColor: Color(0xffffffff),
                  filled: true,
                ),
              ),
            ), // Password Feild
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 50,
              width: double.infinity,
              child: TextField(
                // obscureText: true,
                controller: _confirmPasswordController,
                obscureText: !_confirmPasswordVisible,
                style: GoogleFonts.rokkitt(
                  //Color(0xffc2c5bc),
                  textStyle: TextStyle(
                    fontSize: 17.0, // Set font size
                  ),
                ),
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  suffixIcon: IconButton(
                    icon: Icon(_confirmPasswordVisible ? Icons.visibility : Icons.visibility_off),
                    onPressed: _toggleConfirmPasswordVisibility,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff1d1a20)),
                    borderRadius: BorderRadius.circular(10),
                    //color: Color(0xffffffff),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xfcec255a)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //hintText: 'Password',
                  fillColor: Color(0xffffffff),
                  filled: true,
                ),
              ),
            ), // Confirm Password Feild
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Row(
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
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1d1a20)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xfcec255a)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Birth Date',
                        fillColor: Color(0xffffffff),
                        filled: true,
                        suffixIcon: SizedBox(
                          width: 5,
                          height: 5,
                          child: GestureDetector(
                            onTap: () async {
                              final selectedDate = await showDatePicker(
                                context: context,
                                initialDate: date,
                                firstDate: DateTime(2000),
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
                  ), // Birth Date Feild

                  Container(
                    margin: EdgeInsets.only(left: 23),
                    width: 154,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xff1d1a20),
                      ),
                    ),
                    child: DropdownButton(
                      hint: Text(
                        'Gender',
                        style: GoogleFonts.rokkitt(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 1.1375,
                          color: Color(0xffc2c5bc),
                        ),
                      ),
                      dropdownColor: Color(0xffffffff),
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      value: valueChoice1,
                      items: listItems1.map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          style: GoogleFonts.rokkitt(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            height: 1.1375,
                            color: Colors.grey[600],
                          ),
                        ),
                      )).toList(),
                      onChanged: (item) {
                        setState(() {
                          valueChoice1 = item;
                          //_genderController.text = item ?? '';
                          _genderController.text = valueChoice1 ?? '';// set the text of the controller, handling null
                        });
                      },
                    ),
                  ),// Gender
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Row(children: [
                Container(
                  //margin: EdgeInsets.only(left: 23),
                  width: 154,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff1d1a20),
                    ),
                  ),
                  child: DropdownButton(
                    hint: Text(
                      'City',
                      style: GoogleFonts.rokkitt(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        height: 1.1375,
                        color: Color(0xffc2c5bc),
                      ),
                    ),
                    dropdownColor: Color(0xffffffff),
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 36,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    value: valueChoice2,
                    items: listItems2.map((item) => DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: GoogleFonts.rokkitt(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 1.1375,
                          color: Colors.grey[600],
                        ),
                      ),
                    )).toList(),
                    onChanged: (item) {
                      setState(() {
                        valueChoice2 = item;
                        _cityController.text = item ?? ''; // set the text of the controller, handling null
                      });
                    },
                  ),
                ),
              ]),
            ),

            SizedBox(
              height: 30,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: GestureDetector(
                onTap: sign_up,
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Color(0xfc161853),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      'Sign up',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rokkitt(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        height: 1.1375,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}