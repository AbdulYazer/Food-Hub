import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/Dishes/dishes_bloc.dart';
import '../../core/constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Summary'),
        centerTitle: true,
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: Colors.white,
            child: BlocBuilder<AllDishesBloc, AllDishesState>(
              builder: (context, state) {
                final dish = state.allItemsInCartList;
                print(dish.toString());
                if (dish == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }else if (dish.isEmpty) {
                  return Center(
                    child: Text('No items in cart'),
                  );
                }
                return ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return DishesInCart(
                        dishName: dish[index]['name'],
                        dishPrice: dish[index]['price'],
                        dishDescription: dish[index]['description'],
                        dishCalories: dish[index]['calories'],
                        tabIndex: 1,
                        dishIndex:index,
                        dishId: dish[index]['dishId'],
                        dishAvailability: dish[index]['availability'], quantity: dish[index]['quantity'],);
                  },
                  itemCount: dish.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider();
                  },
                );
              },
            ),
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
    required this.dishAvailability, required this.quantity,
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    backgroundColor: Colors.red,
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
                  Text('INR $dishPrice', style: DishPriceText),
                  Text(
                    dishCalories.toString(),
                    style: DishPriceText,
                  ),
                  kHeight,
                  kHeight,
                  Center(
                    child: Container(
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)),
                      child: BlocBuilder<AllDishesBloc, AllDishesState>(
                        builder: (context, state) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    final userId =
                                        FirebaseAuth.instance.currentUser;
                                        if(userId!=null){
                                          int quantity = 
                                                state.allItemsInCartList![
                                                    dishIndex]['quantity'] -
                                            1;
                                        BlocProvider.of<AllDishesBloc>(context)
                                            .add(UpdateQuantity(
                                                quantity: quantity,
                                                dishId: state.allItemsInCartList![
                                                    dishIndex]['dishId'],
                                                uId: userId.uid));
                                        BlocProvider.of<AllDishesBloc>(context)
                                            .add(FetchAllItemsInCart(
                                                uId: userId.uid));
                                        }
                                    
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  )),
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
                                                dishDescription: dishDescription,
                                                dishImgUrl: 'dishImgUrl',
                                                dishId: dishId));
                                        BlocProvider.of<AllDishesBloc>(context)
                                            .add(FetchAllItemsInCart(
                                                uId: userId.uid));
                                      } else {
                                        int quantity = 
                                                state.allItemsInCartList![
                                                    dishIndex]['quantity'] +
                                            1;
                                        BlocProvider.of<AllDishesBloc>(context)
                                            .add(UpdateQuantity(
                                                quantity: quantity,
                                                dishId: state.allItemsInCartList![
                                                    dishIndex]['dishId'],
                                                uId: userId.uid));
                                        BlocProvider.of<AllDishesBloc>(context)
                                            .add(FetchAllItemsInCart(
                                                uId: userId.uid));
                                      }
                                    }
                                  },
                                  icon: Icon(
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
