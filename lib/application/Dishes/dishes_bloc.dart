import 'package:bloc/bloc.dart';
import 'package:food_hub/domain/home_page/model/dishes_response/dishes_response.dart';
import 'package:food_hub/services/database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/home_page/homepage_services.dart';

part 'dishes_event.dart';
part 'dishes_state.dart';
part 'dishes_bloc.freezed.dart';

@injectable
class AllDishesBloc extends Bloc<AllDishesEvent, AllDishesState> {
  final HomePageServices _homePageServices;
  AllDishesBloc(this._homePageServices) : super(AllDishesState.initial()) {
    on<FetchAllDishes>((event, emit) async {
      emit(
          AllDishesState(allDishes: null, isLoading: true, isError: false, function: null, quantity: state.quantity, allItemsInCartList: state.allItemsInCartList, total: state.total));

      final _result = await _homePageServices.fetchDishes();
      final newState = _result.fold((MainFailure failure) {
        return AllDishesState(
            allDishes: null, isLoading: false, isError: true, function: null, quantity: state.quantity, allItemsInCartList: state.allItemsInCartList, total: state.total);
      }, (TranslatorModel resp) {
        return AllDishesState(
            allDishes: resp.tableMenuList, isLoading: false, isError: false, function: null, quantity: state.quantity, allItemsInCartList: state.allItemsInCartList, total: state.total);
      });
      emit(newState);
    });
    on<AddDishesToCart>((event, emit) async{
      emit(state.copyWith(function: await(DatabaseServices().addDishToCart( dishId: event.dishId!, uId: event.uId, dishName: event.dishName, dishPrice: event.dishPrice, quantity: event.quantity, dishDescription: event.dishDescription, dishCalories: event.dishCalories, dishAvailability: event.dishAvailability, dishImgUrl: event.dishImgUrl, dishType: event.dishType))));
    });
    on<FetchAllItemsInCart>((event, emit) async{
       var result = await DatabaseServices().dishesInCart(uId: event.uId);
      emit(state.copyWith(allItemsInCartList: result));
    });
    on<UpdateQuantity>((event, emit) async {
      emit(state.copyWith(quantity: event.quantity));
      emit(state.copyWith(
          function: DatabaseServices().updateQuantity(
              prodId: event.dishId, uId: event.uId, quantity: state.quantity!)));
    });

    on<TotalPrice>((event, emit) async {
      double total = await DatabaseServices().totalPrice(uId: event.uId);
      emit(state.copyWith(total: total));
    });

    on<DeleteAllFromCart>((event, emit) async{
      emit(state.copyWith(function:await DatabaseServices().deleteAllFromCart(uId: event.uId)));
    });
  }
}
