import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/core/constants.dart';
import 'package:food_hub/presentation/homeScreen/home_screen.dart';
import 'package:food_hub/presentation/phoneNumberSignIn/phone_number_screen.dart';
import 'package:food_hub/services/authFunctions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(
              height: 500,
              child: Center(
                  child: Image(
                image: AssetImage(
                  'assets/images/firebase_logo.png',
                ),
                height: 150,
              )),
            ),
            SignInPageBtns(
              color: Colors.blue,
              name: 'Google',
              ontap: () async {
                Authentication auth = Authentication();
                User? user = await auth.signInWithGoogle().then((value) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const HomeScreen()));
                });
              },
              leading: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/images/google_icon.png',
                    scale: 2.5,
                  )),
            ),
            kHeight,
            SignInPageBtns(
              color: Colors.green,
              name: 'Phone',
              ontap: () async {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const PhoneNumberVerifyScreen()));
              },
              leading: const Icon(
                Icons.phone,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignInPageBtns extends StatelessWidget {
  const SignInPageBtns({
    super.key,
    required this.name,
    required this.color,
    required this.ontap,
    required this.leading,
  });
  final String name;
  final Color color;
  final Function() ontap;
  final Widget leading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color, minimumSize: const Size(0, 70)),
        onPressed: ontap,
        child: Row(
          children: [
            leading,
            const SizedBox(
              width: 80,
            ),
            Text(
              name,
              style: SignInBtnText,
            )
          ],
        ));
  }
}
