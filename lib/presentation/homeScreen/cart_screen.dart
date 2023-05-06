import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_hub/presentation/homeScreen/order_succesful_screen.dart';

import '../../application/Dishes/dishes_bloc.dart';
import '../../core/constants.dart';
import '../../services/database.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summary'),
        centerTitle: true,
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.white,
                  child: BlocBuilder<AllDishesBloc, AllDishesState>(
                    builder: (context, state) {
                      final uId = FirebaseAuth.instance.currentUser;
                      if (uId != null) {
                        BlocProvider.of<AllDishesBloc>(context)
                            .add(TotalPrice(uId: uId.uid));
                      }
                      final dish = state.allItemsInCartList;
                      print(dish.toString());
                      if (dish == null) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (dish.isEmpty) {
                        return const Center(
                          child: Text('No items in cart'),
                        );
                      }
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green[900],
                              ),
                              child: Center(
                                child: Text(
                                  '${state.allItemsInCartList!.length.toString()} Dishes',
                                  style: DishNameText.copyWith(
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.separated(
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DishesInCart(
                                    dishName: dish[index]['name'],
                                    dishPrice: dish[index]['price'],
                                    dishDescription: dish[index]['description'],
                                    dishCalories: dish[index]['calories'],
                                    tabIndex: 1,
                                    dishIndex: index,
                                    dishId: dish[index]['dishId'],
                                    dishAvailability: dish[index]
                                        ['availability'],
                                    quantity: dish[index]['quantity'],
                                    uid: uId!.uid, dishType:dish[index]['type'] ,
                                  ),
                                );
                              },
                              itemCount: dish.length,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const Divider();
                              },
                            ),
                          ),
                          const Divider(),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Total Amount',
                                    style: DishNameText,
                                  ),
                                  BlocBuilder<AllDishesBloc, AllDishesState>(
                                    builder: (context, state) {
                                      double? total = state.total;
                                      return Text(
                                        'INR $total',
                                        style: DishPriceText.copyWith(
                                            color: Colors.green),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocBuilder<AllDishesBloc, AllDishesState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[900],
                            fixedSize: const Size(400, 50)),

                        onPressed: () {
                          if (state.allItemsInCartList!.length != 0) {
                            var uId = FirebaseAuth.instance.currentUser;
                            if (uId != null) {
                              BlocProvider.of<AllDishesBloc>(context)
                                  .add(DeleteAllFromCart(uId: uId.uid));

                              BlocProvider.of<AllDishesBloc>(context)
                                  .add(FetchAllItemsInCart(uId: uId.uid));
                            }
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => const OrderReviewScreen()),
                                ((route) => false));
                          }
                        },
                        // color: Colors.blue,
                        // textColor: Colors.white,
                        child: Text(
                          'Place Order',
                          style: DishPriceText.copyWith(
                              color: Colors.white, fontSize: 20),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DishesInCart extends StatelessWidget {
  const DishesInCart({
    super.key,
    required this.dishName,
    required this.dishPrice,
    required this.dishDescription,
    required this.dishCalories,
    required this.tabIndex,
    required this.dishIndex,
    required this.dishId,
    required this.dishAvailability,
    required this.quantity,
    required this.uid, required this.dishType,
  });
  final String dishName;
  final double dishPrice;
  final String dishDescription;
  final double dishCalories;
  final int tabIndex;
  final int dishIndex;
  final String dishId;
  final bool dishAvailability;
  final int quantity;
  final String uid;
  final int dishType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    shape: BoxShape.rectangle),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: dishType == 1 ? Colors.red : Colors.green,
                  ),
                ),
              ),
            ),
            kWidth,
            SizedBox(
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(dishName, style: DishNameText),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('INR $dishPrice', style: DishPriceText),
                      Text('INR ${dishPrice * quantity} ', style: DishPriceText),
                    ],
                  ),
                  Text(
                    '${dishCalories.toString()} Calories',
                    style: DishPriceText,
                  ),
                  kHeight,
                  kHeight,
                  Center(
                    child: Container(
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.green[900],
                          borderRadius: BorderRadius.circular(50)),
                      child: BlocBuilder<AllDishesBloc, AllDishesState>(
                        builder: (context, state) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              state.allItemsInCartList![dishIndex]
                                          ['quantity'] !=
                                      1
                                  ? IconButton(
                                      onPressed: () {
                                        final userId =
                                            FirebaseAuth.instance.currentUser;
                                        if (userId != null &&
                                            state.allItemsInCartList![dishIndex]
                                                    ['quantity'] >
                                                1) {
                                          int quantity =
                                              state.allItemsInCartList![
                                                      dishIndex]['quantity'] -
                                                  1;
                                          BlocProvider.of<AllDishesBloc>(
                                                  context)
                                              .add(UpdateQuantity(
                                                  quantity: quantity,
                                                  dishId:
                                                      state.allItemsInCartList![
                                                          dishIndex]['dishId'],
                                                  uId: userId.uid));
                                          BlocProvider.of<AllDishesBloc>(
                                                  context)
                                              .add(FetchAllItemsInCart(
                                                  uId: userId.uid));
                                        }
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ))
                                  : IconButton(
                                      onPressed: () async {
                                        showAlertDialog1(
                                          context,
                                          dishId: state.allItemsInCartList![
                                              dishIndex]['dishId'],
                                          uId: uid, dishName: state.allItemsInCartList![
                                              dishIndex]['name'],
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.grey,
                                      ),
                                    ),
                              Text(
                                quantity.toString(),
                                style:
                                    DishPriceText.copyWith(color: Colors.white),
                              ),
                              IconButton(
                                  onPressed: () {
                                    final userId =
                                        FirebaseAuth.instance.currentUser;
                                    if (userId != null) {
                                      bool isAdded = false;
                                      for (int i = 0;
                                          i < state.allItemsInCartList!.length;
                                          i++) {
                                        if (state.allItemsInCartList![i]
                                                ['dishId'] ==
                                            dishId) {
                                          isAdded = true;
                                        }
                                      }
                                      if (state.allItemsInCartList == null ||
                                          !isAdded) {
                                        BlocProvider.of<AllDishesBloc>(context)
                                            .add(AddDishesToCart(
                                                uId: userId.uid,
                                                dishName: dishName,
                                                dishPrice: dishPrice,
                                                quantity: 1,
                                                dishCalories: dishCalories,
                                                dishAvailability:
                                                    dishAvailability,
                                                dishDescription:
                                                    dishDescription,
                                                dishImgUrl: 'dishImgUrl',
                                                dishId: dishId, dishType: dishType));
                                        BlocProvider.of<AllDishesBloc>(context)
                                            .add(FetchAllItemsInCart(
                                                uId: userId.uid));
                                      } else {
                                        int quantity =
                                            state.allItemsInCartList![dishIndex]
                                                    ['quantity'] +
                                                1;
                                        BlocProvider.of<AllDishesBloc>(context)
                                            .add(UpdateQuantity(
                                                quantity: quantity,
                                                dishId:
                                                    state.allItemsInCartList![
                                                        dishIndex]['dishId'],
                                                uId: userId.uid));
                                        BlocProvider.of<AllDishesBloc>(context)
                                            .add(FetchAllItemsInCart(
                                                uId: userId.uid));
                                      }
                                    }
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  kHeight,
                ],
              ),
            ),
            kWidth,
          ],
        ),
      ],
    );
  }
}

showAlertDialog1(BuildContext context, {required uId, required String dishId,required String dishName}) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text("Cancel"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: const Text("ok"),
    onPressed: () async {
      await DatabaseServices().deleteProductFromCart(uId: uId, dishId: dishId);
      BlocProvider.of<AllDishesBloc>(context)
          .add(FetchAllItemsInCart(uId: uId));
      BlocProvider.of<AllDishesBloc>(context).add(TotalPrice(uId: uId));
      Navigator.pop(context);
      final snackBar = SnackBar(
              content: Text('$dishName removed from cart!'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Delete Item from cart"),
    content: const Text("Are you sure ?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
