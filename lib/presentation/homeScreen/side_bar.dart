import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_hub/presentation/homeScreen/home_screen.dart';
import 'package:food_hub/presentation/login_screen.dart';
import 'package:food_hub/services/authFunctions.dart';

import '../../application/Dishes/dishes_bloc.dart';
import '../../core/constants/loading.dart';

class SideBar extends StatelessWidget {
  SideBar({
    super.key,
  });
  // final Users user;

  final Authentication _auth = Authentication();

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var userId = auth.currentUser;
      if (userId != null) {
        // BlocProvider.of<AllProductsBloc>(context)
        //     .add(FetchOrders(uId: userId.uid));
        // BlocProvider.of<WishlistBloc>(context)
        //     .add(FetchAllWhislistedProducts(uId: userId.uid));
      }
    });
    return SafeArea(
      child: Drawer(
        width: MediaQuery.of(context).size.width * .65,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              builderHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget builderHeader(BuildContext context) {
    var uId = FirebaseAuth.instance.currentUser;
    return Container(
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: BlocBuilder<AllDishesBloc, AllDishesState>(
        builder: (context, state) {
          return InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset('assets/images/UserImage.png'),
                  ),
                  Text(
                    'Profile',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'ID : 410',
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ));
        },
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    var userId = auth.currentUser;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(children: [
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.login_outlined),
            onTap: () async {
              showAlertDialog1(context);
            },
          )
        ])
      ],
    );
  }

  showAlertDialog1(BuildContext context) {
    Widget cancelButton = TextButton(
      child: const Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: const Text("ok"),
      onPressed: () async {
        await _auth.signOut();
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => LoginScreen()),
            (route) => false);
      },
    );
    AlertDialog alert = AlertDialog(
      title: const Text("Logout"),
      content: const Text("Are you sure ?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
