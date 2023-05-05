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
      required String? dishImgUrl}) async {
    foodHubCartCollection.doc(uId).collection(uId).doc(dishId).set({
      'dishId': dishId,
      'name': dishName,
      'price': dishPrice,
      'quantity': quantity,
      'description': dishDescription,
      'calories': dishCalories,
      'availability': dishAvailability,
      'imgUrl': dishImgUrl
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
    int total = 0;
    var result = await dishesInCart(uId: uId);
    for (int i = 0; i < result.length; i++) {
      total += int.parse(result[i]['price'].toString()) *
          int.parse(result[i]['quantity'].toString());
    }
    return total;
  }

  Future deleteProductFromCart(
      {required String uId, required String id}) async {
    foodHubCartCollection.doc(uId).collection(uId).doc(id).delete();
  }

  Future deleteAllProductFromCart({required String uId}) async {
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

  final CollectionReference audibleOrdersCollection =
      FirebaseFirestore.instance.collection('orders');

  Future addOrders(
      {required String uId,
      required String addressId,
      required String date,
      required String paymentType,
      required String status,
      required String totalPrice}) async {
    try {
      final userAddressDoc = await FirebaseFirestore.instance
          .collection('address')
          .doc(uId)
          .collection(uId)
          .doc(addressId)
          .get();
      dynamic userAddressDetails = userAddressDoc.data();
      var result = await dishesInCart(
        uId: uId,
      );
      var audibleOrdersCollectionId =
          audibleOrdersCollection.doc(uId).collection(uId).doc();
      audibleOrdersCollectionId.set({
        'date': date,
        'paymentType': paymentType,
        'id': audibleOrdersCollectionId.id,
        'status': status,
        'totalPrice': totalPrice,
        'userId': uId,
        'products': result.map((element) {
          return {
            'id': element['id'],
            'name': element['name'],
            'brand': element['brand'],
            'price': element['price'],
            'quantity': element['quantity'],
            'description': element['description'],
            'category': element['category'],
            'stock': element['stock'],
            'subCategory': element['subCategory'],
            'imgUrl': element['imgUrl'],
          };
        }).toList(),
        'address': FieldValue.arrayUnion([
          {
            'name': userAddressDetails['name'],
            'number': userAddressDetails['number'],
            'pincode': userAddressDetails['pincode'],
            'area': userAddressDetails['area'],
            'town': userAddressDetails['town'],
            'state': userAddressDetails['state'],
            'country': userAddressDetails['country']
          }
        ])
      }).then((value) => deleteAllProductFromCart(uId: uId));
    } catch (e) {
      print(e.toString());
    }
  }

  Future<List<dynamic>> fetchOrders({required String uId}) async {
    List ordersList = [];
    try {
      final orders =
          await audibleOrdersCollection.doc(uId).collection(uId).get();
      orders.docs.forEach((element) {
        return ordersList.add(element.data());
      });
      return ordersList;
    } catch (e) {
      print(e.toString());
      return ordersList;
    }
  }

  Future changeStatus({required String status,required String orderId,required String userId}) async{
    await FirebaseFirestore.instance.collection('orders').doc(userId).collection(userId).doc(orderId).update(
      {
        'status': status
      }
    );
  }
}
