import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_hub/core/constants/loading.dart';
import 'package:food_hub/core/constants/motion_toast.dart';
import 'package:food_hub/presentation/homeScreen/home_screen.dart';
import 'package:food_hub/presentation/phoneNumberSignIn/phone_number_screen.dart';
import 'package:food_hub/services/authFunctions.dart';
import 'package:pinput/pinput.dart';

import '../../application/signUp/signup_bloc.dart';

class OtpVerifyScreen extends StatelessWidget {
  OtpVerifyScreen({super.key, required this.phoneNumber});
  final String phoneNumber;
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    var code = '';
    return BlocBuilder<SignupBloc, SignupState>(builder: (context, state) {
      return state.loading
          ? const Loading()
          : Scaffold(
              appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.black),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'OTP Authentication',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'An authentication code has been \nsent to the number',
                        style: TextStyle(color: Colors.black87, height: 1.5),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Pinput(
                        length: 6,
                        showCursor: true,
                        onChanged: (value) {
                          code = value;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Didn\'t get the code? ',
                            style:
                                TextStyle(fontSize: 13, color: Colors.black54),
                          ),
                          InkWell(
                            onTap: () {
                              final Authentication _auth = Authentication();

                              dynamic result = _auth.signInWithPhoneNumber(
                                  phoneNumber, context);
                            },
                            child: const Text('Resend code',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Column(
                        children: [
                          Center(
                              child: TextIconButton(
                                  text: 'Continue',
                                  icon: Icons.arrow_right_alt,
                                  color: const Color.fromRGBO(255, 219, 71, 1),
                                  ontap: () async {
                                    try {
                                      BlocProvider.of<SignupBloc>(context)
                                          .add(const IsLoading(loading: true));

                                      PhoneAuthCredential credential =
                                          PhoneAuthProvider.credential(
                                              verificationId:
                                                  PhoneNumberVerifyScreen
                                                      .verify,
                                              smsCode: code);
                                      // var userId = Authentication().user;
                                      UserCredential result = await auth
                                          .signInWithCredential(credential);
                                      // await DatabaseServices(
                                      //         uid: result.user!.uid)
                                      //     .addUserData(
                                      //         phoneNumber: phoneNumber);
                                      // await auth.signInWithCredential(credential);
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen()));
                                    } catch (e) {
                                      BlocProvider.of<SignupBloc>(context)
                                          .add(const IsLoading(loading: false));
                                      var error = 'Wrong OTP';
                                      motionToastCustom(context, error,
                                          'https://assets3.lottiefiles.com/packages/lf20_dyZlfDsL2b.json');
                                    }
                                  })),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
    });
  }
}
