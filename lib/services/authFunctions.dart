import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_hub/application/signUp/signup_bloc.dart';
import 'package:food_hub/presentation/phoneNumberSignIn/otp_screen.dart';
import 'package:food_hub/presentation/phoneNumberSignIn/phone_number_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  UserCredential? user;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      return userCredential.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<User?> signInWithPhoneNumber(
      String phoneNumber, BuildContext context) async {
    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted: (credentials) {},
          verificationFailed: (e) {
            print(e.toString());
          },
          codeSent: (verificationId, resendToken) async {
            BlocProvider.of<SignupBloc>(context).add(IsLoading(loading: false));
            PhoneNumberVerifyScreen.verify = verificationId;
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => OtpVerifyScreen(
                      phoneNumber: phoneNumber,
                    )));
          },
          codeAutoRetrievalTimeout: (verificationId) {});
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
