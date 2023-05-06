import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  final String? uid;
  DatabaseServices({this.uid});

  // --------------------------------Cart functions -----------------------------------

  final CollectionReference foodHubCartCollection =
      FirebaseFirestore.instance.collection('cart');
  Future addDishToCart(
      {
      required String dishId,
      required String uId,
      required String? dishName,
      required double? dishPrice,
      required int? quantity,
      required String? dishDescription,
      required double? dishCalories,
      required bool dishAvailability,
      required String? dishImgUrl,
      required int? dishType
      }) async {
    foodHubCartCollection.doc(uId).collection(uId).doc(dishId).set({
      'dishId': dishId,
      'name': dishName,
      'price': dishPrice,
      'quantity': quantity,
      'description': dishDescription,
      'calories': dishCalories,
      'availability': dishAvailability,
      'imgUrl': dishImgUrl,
      'type' : dishType
    });
  }

  Future<List<dynamic>> dishesInCart({required String uId}) async {
    List cartItemsList = [];
    try {
      final cartItems =
          await foodHubCartCollection.doc(uId).collection(uId).get();
      cartItems.docs.forEach((element) {
        return cartItemsList.add(element.data());
      });
      return cartItemsList;
    } catch (e) {
      print(e.toString());
      return cartItemsList;
    }
  }

  Future updateQuantity(
      {required String prodId,
      required String uId,
      required int quantity}) async {
    foodHubCartCollection
        .doc(uId)
        .collection(uId)
        .doc(prodId)
        .update({'quantity': quantity});
  }

  Future totalPrice({required String uId}) async {
    double total = 0;
    var result = await dishesInCart(uId: uId);
    for (int i = 0; i < result.length; i++) {
      total += result[i]['price'] *
          result[i]['quantity'];
    }
    return total;
  }

  Future deleteProductFromCart(
      {required String uId, required String dishId}) async {
    foodHubCartCollection.doc(uId).collection(uId).doc(dishId).delete();
  }

  Future deleteAllFromCart({required String uId}) async {
    try {
      var cartItems = await foodHubCartCollection.doc(uId).collection(uId);
      cartItems.get().then((QuerySnapshot) {
        QuerySnapshot.docs.forEach((element) {
          element.reference.delete();
        });
      });
      await foodHubCartCollection.doc(uId).delete();
    } catch (e) {
      print(e.toString());
    }
  }

  
}
