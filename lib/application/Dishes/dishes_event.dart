part of 'dishes_bloc.dart';

@freezed
class AllDishesEvent with _$AllDishesEvent {
  const factory AllDishesEvent.fetchAllDishes() = FetchAllDishes;
  const factory AllDishesEvent.addDishesToCart({required String uId,required String? dishName,required double? dishPrice,required int? quantity,required double? dishCalories,required String? dishDescription,required String? dishImgUrl,required String? dishId,required bool dishAvailability,required int dishType}) = AddDishesToCart;
  const factory AllDishesEvent.updateQuantity({required String dishId,required String uId,required int quantity}) = UpdateQuantity;
  const factory AllDishesEvent.fetchAllItemsInCart({required String uId}) = FetchAllItemsInCart;
   const factory AllDishesEvent.totalPrice({required String uId}) = TotalPrice;
   const factory AllDishesEvent.deleteAllFromCart({required String uId}) = DeleteAllFromCart;
   
  
}
