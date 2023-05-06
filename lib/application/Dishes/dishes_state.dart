part of 'dishes_bloc.dart';

@freezed
class AllDishesState with _$AllDishesState {
  const factory AllDishesState({
    required dynamic? function,
    required List<TableMenuList>? allDishes,
    required bool isLoading,
    required bool isError,
    required int? quantity,
    required List<dynamic>? allItemsInCartList,
    required double? total,
  }) = _Initial;

  factory AllDishesState.initial() {
    return AllDishesState(
        allDishes: null, isError: false, isLoading: false, function: null, quantity: null, allItemsInCartList: [], total: null);
  }
}
