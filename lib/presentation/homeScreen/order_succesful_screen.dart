import 'package:flutter/material.dart';
import 'package:food_hub/presentation/homeScreen/home_screen.dart';

import '../../core/constants.dart';

class OrderReviewScreen extends StatelessWidget {
  const OrderReviewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const HomeScreen()),
            ((route) => false));
      });
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: mainYlClr,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.credit_score_outlined,
                size: 55,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Order Successful!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
