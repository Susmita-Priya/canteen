import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../model/user_model.dart';
import 'login_screen.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  final _formkey = GlobalKey<FormState>();

  final namesignup = new TextEditingController();
  final idsignup = new TextEditingController();
  final emailsignup = new TextEditingController();
  final phnsignup = new TextEditingController();
  final passsignup = new TextEditingController();
  final conpasssignup = new TextEditingController();

  final _auth = FirebaseAuth.instance;

  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    //name field
    final nameField = TextFormField(
      autofocus: false,
      //autocorrect: false,
      controller: namesignup,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("Name cannot be empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Name(Min. 3 Character)");
        }
        return null;
      },
      onSaved: (value) {
        namesignup.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Name",
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(25),
        // )
      ),
    );

    //id field
    final idField = TextFormField(
      autofocus: false,
      autocorrect: false,
      controller: idsignup,
      keyboardType: TextInputType.text,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{10,}$');
        if (value!.isEmpty) {
          return ("ID cannot be empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid ID(with 1 Character and 9 digits)");
        }
        return null;
      },
      onSaved: (value) {
        idsignup.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "ID (i.e. B180305047)",
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(25),
        // )
      ),
    );

    //email field
    final emailField = TextFormField(
      autofocus: false,
      autocorrect: false,
      controller: emailsignup,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Email cannot be empty");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailsignup.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(25),
        // )
      ),
    );

    //phn field
    final phnField = TextFormField(
      autofocus: false,
      autocorrect: false,
      controller: phnsignup,
      keyboardType: TextInputType.number,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{11,}$');
        if (value!.isEmpty) {
          return ("Phone number cannot be empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid number(with 11 digits)");
        }
        return null;
      },
      onSaved: (value) {
        phnsignup.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Phone number",
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(25),
        // )
      ),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      autocorrect: false,
      controller: passsignup,
      //obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password cannot be empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (value) {
        passsignup.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        // suffixIcon: Icon(
        //   Icons.visibility_off,
        //   color: Colors.grey,
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.vertical(),
        // )
      ),
    );
//conpassword field
    final cpasswordField = TextFormField(
      autofocus: false,
      autocorrect: false,
      controller: conpasssignup,
      //obscureText: true,
      validator: (value) {
        if (conpasssignup.text != passsignup.text) {
          return ("Password dont match");
        }
        return null;
      },
      onSaved: (value) {
        conpasssignup.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        // suffixIcon: Icon(
        //   Icons.visibility_off,
        //   color: Colors.grey,
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.vertical(),
        // )
      ),
    );
//button
    final loginButton = Material(
      elevation: 5,
      color: Colors.orange,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () {
          signUp(emailsignup.text, passsignup.text);
        },
        minWidth: MediaQuery.of(context).size.width,
        child: Text(
          "SignUp",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Scaffold(
      // backgroundColor: Colors.white,
      //body: Center(
      //child: SingleChildScrollView(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
            image: AssetImage('assets/dash2.jpg'),
            //opacity: 40,
          ),
        ),
        //height: _headerheight,
        //color: Colors.white,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 615,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Center(
                          child: Text(
                            'Create an account',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        nameField,
                        SizedBox(
                          height: 10,
                        ),
                        idField,
                        SizedBox(
                          height: 10,
                        ),
                        emailField,
                        SizedBox(
                          height: 10,
                        ),
                        phnField,
                        SizedBox(
                          height: 10,
                        ),
                        passwordField,
                        SizedBox(
                          height: 10,
                        ),
                        cpasswordField,
                        SizedBox(
                          height: 20,
                        ),
                        loginButton,
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Already a user? "),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => loginScreen()));
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
      //),
      //),
    );
  }

  void signUp(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {postDetailsToFirestore()})
            .catchError((e) {
          Fluttertoast.showToast(msg: e!.message);
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }

  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sedning these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    // writing all the values
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.id = idsignup.text;
    userModel.name = namesignup.text;
    userModel.phn = phnsignup.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => loginScreen()),
        (route) => false);
  }
}
