import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_hub/application/signUp/signup_bloc.dart';
import 'package:food_hub/core/constants.dart';
import 'package:food_hub/presentation/homeScreen/cart_screen.dart';
import 'package:food_hub/presentation/homeScreen/side_bar.dart';
import 'package:food_hub/presentation/login_screen.dart';
import 'package:food_hub/services/authFunctions.dart';

import '../../application/Dishes/dishes_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      var user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        BlocProvider.of<AllDishesBloc>(context).add(FetchAllDishes());
        BlocProvider.of<AllDishesBloc>(context)
            .add(FetchAllItemsInCart(uId: user.uid));
      }
    });
    return BlocBuilder<AllDishesBloc, AllDishesState>(
      builder: (context, state) {
        if (state.allDishes == null) {
          return Center(child: CircularProgressIndicator());
        }
        return DefaultTabController(
          length: state.allDishes!.length,
          child: Scaffold(
            appBar: AppBar(
              actions: [
                InkWell(
                  onTap: () {
                    var user = FirebaseAuth.instance.currentUser;
                    if (user != null) {
                      BlocProvider.of<AllDishesBloc>(context)
                          .add(FetchAllItemsInCart(uId: user.uid));
                    }

                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CartScreen()));
                  },
                  child: shoppingCartWithCount(context, Colors.white),
                ),
              ],
              bottom: TabBar(
                  isScrollable: true,
                  tabs: List.generate(
                      state.allDishes!.length,
                      (index) =>
                          Tab(text: state.allDishes![index].menuCategory))),
            ),
            drawer: SideBar(),
            body: TabBarView(
              children: List.generate(
                  state.allDishes!.length,
                  (index) => TabBarItems(
                        tabIndex: index,
                      )),
            ),
          ),
        );
      },
    );
  }
}

Widget shoppingCartWithCount(BuildContext context, Color activeClr) {
  return Badge(
    backgroundColor: Colors.red[400],
    label: BlocBuilder<AllDishesBloc, AllDishesState>(
      builder: (context, state) {
        int value = 0;
        var user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          if (state.allItemsInCartList != null) {
            value = state.allItemsInCartList!.length;
          }
          return Text(
            '$value',
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          );
        }
        return Text(
          '$value',
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        );
      },
    ),
    alignment: const AlignmentDirectional(.5, -1),
    child: Container(
      height: 30,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: activeClr),
      child: const Icon(
        Icons.shopping_cart_checkout,
        color: Colors.black,
        size: 24,
      ),
    ),

    // ),
  );
}

class TabBarItems extends StatelessWidget {
  const TabBarItems({super.key, required this.tabIndex});
  final int tabIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: BlocBuilder<AllDishesBloc, AllDishesState>(
          builder: (context, state) {
            final dish = state.allDishes;
            return ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Dishes(
                  dishCalories:
                      dish[tabIndex].categoryDishes[index].dishCalories,
                  dishDescription:
                      dish[tabIndex].categoryDishes[index].dishDescription,
                  dishImgUrl:
                      'https://www.southernliving.com/thmb/QNfo80VBrmEQq2cWYfak_4p17Kw=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/27025-Suppertime-Primaveras_0130-2000-de6f6abe9c3d4decbc5b0ef3adfeab42.jpg',
                  dishName: dish[tabIndex].categoryDishes[index].dishName,
                  dishPrice: dish[tabIndex].categoryDishes[index].dishPrice,
                  tabIndex: tabIndex,
                  dishIndex: index,
                  dishId: dish[tabIndex].categoryDishes[index].dishId,
                  dishAvailability:
                      dish[tabIndex].categoryDishes[index].dishAvailability,
                );
              },
              itemCount: dish![tabIndex].categoryDishes.length,
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            );
          },
        ),
      ),
    );
  }
}

class Dishes extends StatelessWidget {
  const Dishes({
    super.key,
    required this.dishName,
    required this.dishPrice,
    required this.dishDescription,
    required this.dishCalories,
    required this.dishImgUrl,
    required this.tabIndex,
    required this.dishIndex,
    required this.dishId,
    required this.dishAvailability, 
  });
  final String dishName;
  final double dishPrice;
  final String dishDescription;
  final double dishCalories;
  final String dishImgUrl;
  final int tabIndex;
  final int dishIndex;
  final String dishId;
  final bool dishAvailability;
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('INR $dishPrice', style: DishPriceText),
                      Text(
                        dishCalories.toString(),
                        style: DishPriceText,
                      ),
                    ],
                  ),
                  kHeight,
                  Text(
                    dishDescription,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  kHeight,
                  Container(
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
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                            Text(
                              '0',
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
                                              dishImgUrl: dishImgUrl,
                                              dishId: dishId));
                                      BlocProvider.of<AllDishesBloc>(context)
                                          .add(FetchAllItemsInCart(
                                              uId: userId.uid));
                                    } else {
                                      int quantity = int.parse(
                                              state.allItemsInCartList![
                                                  dishIndex]['quantity']) +
                                          1;
                                      BlocProvider.of<AllDishesBloc>(context)
                                          .add(UpdateQuantity(
                                              quantity: quantity,
                                              dishId: state.allItemsInCartList![
                                                  dishIndex]['id'],
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
                  kHeight,
                  BlocBuilder<AllDishesBloc, AllDishesState>(
                    builder: (context, state) {
                      int length = state.allDishes![tabIndex]
                          .categoryDishes[dishIndex].addonCat!.length;
                      return Text(
                        length > 0 ? 'Customizations Available' : '',
                        style: DishPriceText.copyWith(
                            color: Colors.red, fontWeight: FontWeight.w400),
                      );
                    },
                  ),
                ],
              ),
            ),
            kWidth,
            Image(
              image: NetworkImage(dishImgUrl),
              height: 100,
              width: 70,
            ),
          ],
        ),
      ],
    );
  }
}
