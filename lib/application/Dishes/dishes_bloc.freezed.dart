// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dishes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllDishesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllDishes,
    required TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)
        addDishesToCart,
    required TResult Function(String dishId, String uId, int quantity)
        updateQuantity,
    required TResult Function(String uId) fetchAllItemsInCart,
    required TResult Function(String uId) totalPrice,
    required TResult Function(String uId) deleteAllFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllDishes,
    TResult? Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult? Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult? Function(String uId)? fetchAllItemsInCart,
    TResult? Function(String uId)? totalPrice,
    TResult? Function(String uId)? deleteAllFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllDishes,
    TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult Function(String uId)? fetchAllItemsInCart,
    TResult Function(String uId)? totalPrice,
    TResult Function(String uId)? deleteAllFromCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllDishes value) fetchAllDishes,
    required TResult Function(AddDishesToCart value) addDishesToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchAllItemsInCart value) fetchAllItemsInCart,
    required TResult Function(TotalPrice value) totalPrice,
    required TResult Function(DeleteAllFromCart value) deleteAllFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllDishes value)? fetchAllDishes,
    TResult? Function(AddDishesToCart value)? addDishesToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult? Function(TotalPrice value)? totalPrice,
    TResult? Function(DeleteAllFromCart value)? deleteAllFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllDishes value)? fetchAllDishes,
    TResult Function(AddDishesToCart value)? addDishesToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult Function(TotalPrice value)? totalPrice,
    TResult Function(DeleteAllFromCart value)? deleteAllFromCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllDishesEventCopyWith<$Res> {
  factory $AllDishesEventCopyWith(
          AllDishesEvent value, $Res Function(AllDishesEvent) then) =
      _$AllDishesEventCopyWithImpl<$Res, AllDishesEvent>;
}

/// @nodoc
class _$AllDishesEventCopyWithImpl<$Res, $Val extends AllDishesEvent>
    implements $AllDishesEventCopyWith<$Res> {
  _$AllDishesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchAllDishesCopyWith<$Res> {
  factory _$$FetchAllDishesCopyWith(
          _$FetchAllDishes value, $Res Function(_$FetchAllDishes) then) =
      __$$FetchAllDishesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllDishesCopyWithImpl<$Res>
    extends _$AllDishesEventCopyWithImpl<$Res, _$FetchAllDishes>
    implements _$$FetchAllDishesCopyWith<$Res> {
  __$$FetchAllDishesCopyWithImpl(
      _$FetchAllDishes _value, $Res Function(_$FetchAllDishes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllDishes implements FetchAllDishes {
  const _$FetchAllDishes();

  @override
  String toString() {
    return 'AllDishesEvent.fetchAllDishes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllDishes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllDishes,
    required TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)
        addDishesToCart,
    required TResult Function(String dishId, String uId, int quantity)
        updateQuantity,
    required TResult Function(String uId) fetchAllItemsInCart,
    required TResult Function(String uId) totalPrice,
    required TResult Function(String uId) deleteAllFromCart,
  }) {
    return fetchAllDishes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllDishes,
    TResult? Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult? Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult? Function(String uId)? fetchAllItemsInCart,
    TResult? Function(String uId)? totalPrice,
    TResult? Function(String uId)? deleteAllFromCart,
  }) {
    return fetchAllDishes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllDishes,
    TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult Function(String uId)? fetchAllItemsInCart,
    TResult Function(String uId)? totalPrice,
    TResult Function(String uId)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (fetchAllDishes != null) {
      return fetchAllDishes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllDishes value) fetchAllDishes,
    required TResult Function(AddDishesToCart value) addDishesToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchAllItemsInCart value) fetchAllItemsInCart,
    required TResult Function(TotalPrice value) totalPrice,
    required TResult Function(DeleteAllFromCart value) deleteAllFromCart,
  }) {
    return fetchAllDishes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllDishes value)? fetchAllDishes,
    TResult? Function(AddDishesToCart value)? addDishesToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult? Function(TotalPrice value)? totalPrice,
    TResult? Function(DeleteAllFromCart value)? deleteAllFromCart,
  }) {
    return fetchAllDishes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllDishes value)? fetchAllDishes,
    TResult Function(AddDishesToCart value)? addDishesToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult Function(TotalPrice value)? totalPrice,
    TResult Function(DeleteAllFromCart value)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (fetchAllDishes != null) {
      return fetchAllDishes(this);
    }
    return orElse();
  }
}

abstract class FetchAllDishes implements AllDishesEvent {
  const factory FetchAllDishes() = _$FetchAllDishes;
}

/// @nodoc
abstract class _$$AddDishesToCartCopyWith<$Res> {
  factory _$$AddDishesToCartCopyWith(
          _$AddDishesToCart value, $Res Function(_$AddDishesToCart) then) =
      __$$AddDishesToCartCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String uId,
      String? dishName,
      double? dishPrice,
      int? quantity,
      double? dishCalories,
      String? dishDescription,
      String? dishImgUrl,
      String? dishId,
      bool dishAvailability,
      int dishType});
}

/// @nodoc
class __$$AddDishesToCartCopyWithImpl<$Res>
    extends _$AllDishesEventCopyWithImpl<$Res, _$AddDishesToCart>
    implements _$$AddDishesToCartCopyWith<$Res> {
  __$$AddDishesToCartCopyWithImpl(
      _$AddDishesToCart _value, $Res Function(_$AddDishesToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uId = null,
    Object? dishName = freezed,
    Object? dishPrice = freezed,
    Object? quantity = freezed,
    Object? dishCalories = freezed,
    Object? dishDescription = freezed,
    Object? dishImgUrl = freezed,
    Object? dishId = freezed,
    Object? dishAvailability = null,
    Object? dishType = null,
  }) {
    return _then(_$AddDishesToCart(
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      dishName: freezed == dishName
          ? _value.dishName
          : dishName // ignore: cast_nullable_to_non_nullable
              as String?,
      dishPrice: freezed == dishPrice
          ? _value.dishPrice
          : dishPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      dishCalories: freezed == dishCalories
          ? _value.dishCalories
          : dishCalories // ignore: cast_nullable_to_non_nullable
              as double?,
      dishDescription: freezed == dishDescription
          ? _value.dishDescription
          : dishDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      dishImgUrl: freezed == dishImgUrl
          ? _value.dishImgUrl
          : dishImgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dishId: freezed == dishId
          ? _value.dishId
          : dishId // ignore: cast_nullable_to_non_nullable
              as String?,
      dishAvailability: null == dishAvailability
          ? _value.dishAvailability
          : dishAvailability // ignore: cast_nullable_to_non_nullable
              as bool,
      dishType: null == dishType
          ? _value.dishType
          : dishType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddDishesToCart implements AddDishesToCart {
  const _$AddDishesToCart(
      {required this.uId,
      required this.dishName,
      required this.dishPrice,
      required this.quantity,
      required this.dishCalories,
      required this.dishDescription,
      required this.dishImgUrl,
      required this.dishId,
      required this.dishAvailability,
      required this.dishType});

  @override
  final String uId;
  @override
  final String? dishName;
  @override
  final double? dishPrice;
  @override
  final int? quantity;
  @override
  final double? dishCalories;
  @override
  final String? dishDescription;
  @override
  final String? dishImgUrl;
  @override
  final String? dishId;
  @override
  final bool dishAvailability;
  @override
  final int dishType;

  @override
  String toString() {
    return 'AllDishesEvent.addDishesToCart(uId: $uId, dishName: $dishName, dishPrice: $dishPrice, quantity: $quantity, dishCalories: $dishCalories, dishDescription: $dishDescription, dishImgUrl: $dishImgUrl, dishId: $dishId, dishAvailability: $dishAvailability, dishType: $dishType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDishesToCart &&
            (identical(other.uId, uId) || other.uId == uId) &&
            (identical(other.dishName, dishName) ||
                other.dishName == dishName) &&
            (identical(other.dishPrice, dishPrice) ||
                other.dishPrice == dishPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.dishCalories, dishCalories) ||
                other.dishCalories == dishCalories) &&
            (identical(other.dishDescription, dishDescription) ||
                other.dishDescription == dishDescription) &&
            (identical(other.dishImgUrl, dishImgUrl) ||
                other.dishImgUrl == dishImgUrl) &&
            (identical(other.dishId, dishId) || other.dishId == dishId) &&
            (identical(other.dishAvailability, dishAvailability) ||
                other.dishAvailability == dishAvailability) &&
            (identical(other.dishType, dishType) ||
                other.dishType == dishType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uId,
      dishName,
      dishPrice,
      quantity,
      dishCalories,
      dishDescription,
      dishImgUrl,
      dishId,
      dishAvailability,
      dishType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDishesToCartCopyWith<_$AddDishesToCart> get copyWith =>
      __$$AddDishesToCartCopyWithImpl<_$AddDishesToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllDishes,
    required TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)
        addDishesToCart,
    required TResult Function(String dishId, String uId, int quantity)
        updateQuantity,
    required TResult Function(String uId) fetchAllItemsInCart,
    required TResult Function(String uId) totalPrice,
    required TResult Function(String uId) deleteAllFromCart,
  }) {
    return addDishesToCart(uId, dishName, dishPrice, quantity, dishCalories,
        dishDescription, dishImgUrl, dishId, dishAvailability, dishType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllDishes,
    TResult? Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult? Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult? Function(String uId)? fetchAllItemsInCart,
    TResult? Function(String uId)? totalPrice,
    TResult? Function(String uId)? deleteAllFromCart,
  }) {
    return addDishesToCart?.call(
        uId,
        dishName,
        dishPrice,
        quantity,
        dishCalories,
        dishDescription,
        dishImgUrl,
        dishId,
        dishAvailability,
        dishType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllDishes,
    TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult Function(String uId)? fetchAllItemsInCart,
    TResult Function(String uId)? totalPrice,
    TResult Function(String uId)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (addDishesToCart != null) {
      return addDishesToCart(uId, dishName, dishPrice, quantity, dishCalories,
          dishDescription, dishImgUrl, dishId, dishAvailability, dishType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllDishes value) fetchAllDishes,
    required TResult Function(AddDishesToCart value) addDishesToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchAllItemsInCart value) fetchAllItemsInCart,
    required TResult Function(TotalPrice value) totalPrice,
    required TResult Function(DeleteAllFromCart value) deleteAllFromCart,
  }) {
    return addDishesToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllDishes value)? fetchAllDishes,
    TResult? Function(AddDishesToCart value)? addDishesToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult? Function(TotalPrice value)? totalPrice,
    TResult? Function(DeleteAllFromCart value)? deleteAllFromCart,
  }) {
    return addDishesToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllDishes value)? fetchAllDishes,
    TResult Function(AddDishesToCart value)? addDishesToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult Function(TotalPrice value)? totalPrice,
    TResult Function(DeleteAllFromCart value)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (addDishesToCart != null) {
      return addDishesToCart(this);
    }
    return orElse();
  }
}

abstract class AddDishesToCart implements AllDishesEvent {
  const factory AddDishesToCart(
      {required final String uId,
      required final String? dishName,
      required final double? dishPrice,
      required final int? quantity,
      required final double? dishCalories,
      required final String? dishDescription,
      required final String? dishImgUrl,
      required final String? dishId,
      required final bool dishAvailability,
      required final int dishType}) = _$AddDishesToCart;

  String get uId;
  String? get dishName;
  double? get dishPrice;
  int? get quantity;
  double? get dishCalories;
  String? get dishDescription;
  String? get dishImgUrl;
  String? get dishId;
  bool get dishAvailability;
  int get dishType;
  @JsonKey(ignore: true)
  _$$AddDishesToCartCopyWith<_$AddDishesToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateQuantityCopyWith<$Res> {
  factory _$$UpdateQuantityCopyWith(
          _$UpdateQuantity value, $Res Function(_$UpdateQuantity) then) =
      __$$UpdateQuantityCopyWithImpl<$Res>;
  @useResult
  $Res call({String dishId, String uId, int quantity});
}

/// @nodoc
class __$$UpdateQuantityCopyWithImpl<$Res>
    extends _$AllDishesEventCopyWithImpl<$Res, _$UpdateQuantity>
    implements _$$UpdateQuantityCopyWith<$Res> {
  __$$UpdateQuantityCopyWithImpl(
      _$UpdateQuantity _value, $Res Function(_$UpdateQuantity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishId = null,
    Object? uId = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateQuantity(
      dishId: null == dishId
          ? _value.dishId
          : dishId // ignore: cast_nullable_to_non_nullable
              as String,
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateQuantity implements UpdateQuantity {
  const _$UpdateQuantity(
      {required this.dishId, required this.uId, required this.quantity});

  @override
  final String dishId;
  @override
  final String uId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'AllDishesEvent.updateQuantity(dishId: $dishId, uId: $uId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuantity &&
            (identical(other.dishId, dishId) || other.dishId == dishId) &&
            (identical(other.uId, uId) || other.uId == uId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dishId, uId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuantityCopyWith<_$UpdateQuantity> get copyWith =>
      __$$UpdateQuantityCopyWithImpl<_$UpdateQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllDishes,
    required TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)
        addDishesToCart,
    required TResult Function(String dishId, String uId, int quantity)
        updateQuantity,
    required TResult Function(String uId) fetchAllItemsInCart,
    required TResult Function(String uId) totalPrice,
    required TResult Function(String uId) deleteAllFromCart,
  }) {
    return updateQuantity(dishId, uId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllDishes,
    TResult? Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult? Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult? Function(String uId)? fetchAllItemsInCart,
    TResult? Function(String uId)? totalPrice,
    TResult? Function(String uId)? deleteAllFromCart,
  }) {
    return updateQuantity?.call(dishId, uId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllDishes,
    TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult Function(String uId)? fetchAllItemsInCart,
    TResult Function(String uId)? totalPrice,
    TResult Function(String uId)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(dishId, uId, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllDishes value) fetchAllDishes,
    required TResult Function(AddDishesToCart value) addDishesToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchAllItemsInCart value) fetchAllItemsInCart,
    required TResult Function(TotalPrice value) totalPrice,
    required TResult Function(DeleteAllFromCart value) deleteAllFromCart,
  }) {
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllDishes value)? fetchAllDishes,
    TResult? Function(AddDishesToCart value)? addDishesToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult? Function(TotalPrice value)? totalPrice,
    TResult? Function(DeleteAllFromCart value)? deleteAllFromCart,
  }) {
    return updateQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllDishes value)? fetchAllDishes,
    TResult Function(AddDishesToCart value)? addDishesToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult Function(TotalPrice value)? totalPrice,
    TResult Function(DeleteAllFromCart value)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }
}

abstract class UpdateQuantity implements AllDishesEvent {
  const factory UpdateQuantity(
      {required final String dishId,
      required final String uId,
      required final int quantity}) = _$UpdateQuantity;

  String get dishId;
  String get uId;
  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateQuantityCopyWith<_$UpdateQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllItemsInCartCopyWith<$Res> {
  factory _$$FetchAllItemsInCartCopyWith(_$FetchAllItemsInCart value,
          $Res Function(_$FetchAllItemsInCart) then) =
      __$$FetchAllItemsInCartCopyWithImpl<$Res>;
  @useResult
  $Res call({String uId});
}

/// @nodoc
class __$$FetchAllItemsInCartCopyWithImpl<$Res>
    extends _$AllDishesEventCopyWithImpl<$Res, _$FetchAllItemsInCart>
    implements _$$FetchAllItemsInCartCopyWith<$Res> {
  __$$FetchAllItemsInCartCopyWithImpl(
      _$FetchAllItemsInCart _value, $Res Function(_$FetchAllItemsInCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uId = null,
  }) {
    return _then(_$FetchAllItemsInCart(
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAllItemsInCart implements FetchAllItemsInCart {
  const _$FetchAllItemsInCart({required this.uId});

  @override
  final String uId;

  @override
  String toString() {
    return 'AllDishesEvent.fetchAllItemsInCart(uId: $uId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllItemsInCart &&
            (identical(other.uId, uId) || other.uId == uId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllItemsInCartCopyWith<_$FetchAllItemsInCart> get copyWith =>
      __$$FetchAllItemsInCartCopyWithImpl<_$FetchAllItemsInCart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllDishes,
    required TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)
        addDishesToCart,
    required TResult Function(String dishId, String uId, int quantity)
        updateQuantity,
    required TResult Function(String uId) fetchAllItemsInCart,
    required TResult Function(String uId) totalPrice,
    required TResult Function(String uId) deleteAllFromCart,
  }) {
    return fetchAllItemsInCart(uId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllDishes,
    TResult? Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult? Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult? Function(String uId)? fetchAllItemsInCart,
    TResult? Function(String uId)? totalPrice,
    TResult? Function(String uId)? deleteAllFromCart,
  }) {
    return fetchAllItemsInCart?.call(uId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllDishes,
    TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult Function(String uId)? fetchAllItemsInCart,
    TResult Function(String uId)? totalPrice,
    TResult Function(String uId)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (fetchAllItemsInCart != null) {
      return fetchAllItemsInCart(uId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllDishes value) fetchAllDishes,
    required TResult Function(AddDishesToCart value) addDishesToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchAllItemsInCart value) fetchAllItemsInCart,
    required TResult Function(TotalPrice value) totalPrice,
    required TResult Function(DeleteAllFromCart value) deleteAllFromCart,
  }) {
    return fetchAllItemsInCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllDishes value)? fetchAllDishes,
    TResult? Function(AddDishesToCart value)? addDishesToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult? Function(TotalPrice value)? totalPrice,
    TResult? Function(DeleteAllFromCart value)? deleteAllFromCart,
  }) {
    return fetchAllItemsInCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllDishes value)? fetchAllDishes,
    TResult Function(AddDishesToCart value)? addDishesToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult Function(TotalPrice value)? totalPrice,
    TResult Function(DeleteAllFromCart value)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (fetchAllItemsInCart != null) {
      return fetchAllItemsInCart(this);
    }
    return orElse();
  }
}

abstract class FetchAllItemsInCart implements AllDishesEvent {
  const factory FetchAllItemsInCart({required final String uId}) =
      _$FetchAllItemsInCart;

  String get uId;
  @JsonKey(ignore: true)
  _$$FetchAllItemsInCartCopyWith<_$FetchAllItemsInCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TotalPriceCopyWith<$Res> {
  factory _$$TotalPriceCopyWith(
          _$TotalPrice value, $Res Function(_$TotalPrice) then) =
      __$$TotalPriceCopyWithImpl<$Res>;
  @useResult
  $Res call({String uId});
}

/// @nodoc
class __$$TotalPriceCopyWithImpl<$Res>
    extends _$AllDishesEventCopyWithImpl<$Res, _$TotalPrice>
    implements _$$TotalPriceCopyWith<$Res> {
  __$$TotalPriceCopyWithImpl(
      _$TotalPrice _value, $Res Function(_$TotalPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uId = null,
  }) {
    return _then(_$TotalPrice(
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TotalPrice implements TotalPrice {
  const _$TotalPrice({required this.uId});

  @override
  final String uId;

  @override
  String toString() {
    return 'AllDishesEvent.totalPrice(uId: $uId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalPrice &&
            (identical(other.uId, uId) || other.uId == uId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalPriceCopyWith<_$TotalPrice> get copyWith =>
      __$$TotalPriceCopyWithImpl<_$TotalPrice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllDishes,
    required TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)
        addDishesToCart,
    required TResult Function(String dishId, String uId, int quantity)
        updateQuantity,
    required TResult Function(String uId) fetchAllItemsInCart,
    required TResult Function(String uId) totalPrice,
    required TResult Function(String uId) deleteAllFromCart,
  }) {
    return totalPrice(uId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllDishes,
    TResult? Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult? Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult? Function(String uId)? fetchAllItemsInCart,
    TResult? Function(String uId)? totalPrice,
    TResult? Function(String uId)? deleteAllFromCart,
  }) {
    return totalPrice?.call(uId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllDishes,
    TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult Function(String uId)? fetchAllItemsInCart,
    TResult Function(String uId)? totalPrice,
    TResult Function(String uId)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (totalPrice != null) {
      return totalPrice(uId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllDishes value) fetchAllDishes,
    required TResult Function(AddDishesToCart value) addDishesToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchAllItemsInCart value) fetchAllItemsInCart,
    required TResult Function(TotalPrice value) totalPrice,
    required TResult Function(DeleteAllFromCart value) deleteAllFromCart,
  }) {
    return totalPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllDishes value)? fetchAllDishes,
    TResult? Function(AddDishesToCart value)? addDishesToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult? Function(TotalPrice value)? totalPrice,
    TResult? Function(DeleteAllFromCart value)? deleteAllFromCart,
  }) {
    return totalPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllDishes value)? fetchAllDishes,
    TResult Function(AddDishesToCart value)? addDishesToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult Function(TotalPrice value)? totalPrice,
    TResult Function(DeleteAllFromCart value)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (totalPrice != null) {
      return totalPrice(this);
    }
    return orElse();
  }
}

abstract class TotalPrice implements AllDishesEvent {
  const factory TotalPrice({required final String uId}) = _$TotalPrice;

  String get uId;
  @JsonKey(ignore: true)
  _$$TotalPriceCopyWith<_$TotalPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAllFromCartCopyWith<$Res> {
  factory _$$DeleteAllFromCartCopyWith(
          _$DeleteAllFromCart value, $Res Function(_$DeleteAllFromCart) then) =
      __$$DeleteAllFromCartCopyWithImpl<$Res>;
  @useResult
  $Res call({String uId});
}

/// @nodoc
class __$$DeleteAllFromCartCopyWithImpl<$Res>
    extends _$AllDishesEventCopyWithImpl<$Res, _$DeleteAllFromCart>
    implements _$$DeleteAllFromCartCopyWith<$Res> {
  __$$DeleteAllFromCartCopyWithImpl(
      _$DeleteAllFromCart _value, $Res Function(_$DeleteAllFromCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uId = null,
  }) {
    return _then(_$DeleteAllFromCart(
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAllFromCart implements DeleteAllFromCart {
  const _$DeleteAllFromCart({required this.uId});

  @override
  final String uId;

  @override
  String toString() {
    return 'AllDishesEvent.deleteAllFromCart(uId: $uId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAllFromCart &&
            (identical(other.uId, uId) || other.uId == uId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAllFromCartCopyWith<_$DeleteAllFromCart> get copyWith =>
      __$$DeleteAllFromCartCopyWithImpl<_$DeleteAllFromCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllDishes,
    required TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)
        addDishesToCart,
    required TResult Function(String dishId, String uId, int quantity)
        updateQuantity,
    required TResult Function(String uId) fetchAllItemsInCart,
    required TResult Function(String uId) totalPrice,
    required TResult Function(String uId) deleteAllFromCart,
  }) {
    return deleteAllFromCart(uId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllDishes,
    TResult? Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult? Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult? Function(String uId)? fetchAllItemsInCart,
    TResult? Function(String uId)? totalPrice,
    TResult? Function(String uId)? deleteAllFromCart,
  }) {
    return deleteAllFromCart?.call(uId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllDishes,
    TResult Function(
            String uId,
            String? dishName,
            double? dishPrice,
            int? quantity,
            double? dishCalories,
            String? dishDescription,
            String? dishImgUrl,
            String? dishId,
            bool dishAvailability,
            int dishType)?
        addDishesToCart,
    TResult Function(String dishId, String uId, int quantity)? updateQuantity,
    TResult Function(String uId)? fetchAllItemsInCart,
    TResult Function(String uId)? totalPrice,
    TResult Function(String uId)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (deleteAllFromCart != null) {
      return deleteAllFromCart(uId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllDishes value) fetchAllDishes,
    required TResult Function(AddDishesToCart value) addDishesToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchAllItemsInCart value) fetchAllItemsInCart,
    required TResult Function(TotalPrice value) totalPrice,
    required TResult Function(DeleteAllFromCart value) deleteAllFromCart,
  }) {
    return deleteAllFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllDishes value)? fetchAllDishes,
    TResult? Function(AddDishesToCart value)? addDishesToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult? Function(TotalPrice value)? totalPrice,
    TResult? Function(DeleteAllFromCart value)? deleteAllFromCart,
  }) {
    return deleteAllFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllDishes value)? fetchAllDishes,
    TResult Function(AddDishesToCart value)? addDishesToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchAllItemsInCart value)? fetchAllItemsInCart,
    TResult Function(TotalPrice value)? totalPrice,
    TResult Function(DeleteAllFromCart value)? deleteAllFromCart,
    required TResult orElse(),
  }) {
    if (deleteAllFromCart != null) {
      return deleteAllFromCart(this);
    }
    return orElse();
  }
}

abstract class DeleteAllFromCart implements AllDishesEvent {
  const factory DeleteAllFromCart({required final String uId}) =
      _$DeleteAllFromCart;

  String get uId;
  @JsonKey(ignore: true)
  _$$DeleteAllFromCartCopyWith<_$DeleteAllFromCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllDishesState {
  dynamic? get function => throw _privateConstructorUsedError;
  List<TableMenuList>? get allDishes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  List<dynamic>? get allItemsInCartList => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllDishesStateCopyWith<AllDishesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllDishesStateCopyWith<$Res> {
  factory $AllDishesStateCopyWith(
          AllDishesState value, $Res Function(AllDishesState) then) =
      _$AllDishesStateCopyWithImpl<$Res, AllDishesState>;
  @useResult
  $Res call(
      {dynamic? function,
      List<TableMenuList>? allDishes,
      bool isLoading,
      bool isError,
      int? quantity,
      List<dynamic>? allItemsInCartList,
      double? total});
}

/// @nodoc
class _$AllDishesStateCopyWithImpl<$Res, $Val extends AllDishesState>
    implements $AllDishesStateCopyWith<$Res> {
  _$AllDishesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? function = freezed,
    Object? allDishes = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? quantity = freezed,
    Object? allItemsInCartList = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      function: freezed == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      allDishes: freezed == allDishes
          ? _value.allDishes
          : allDishes // ignore: cast_nullable_to_non_nullable
              as List<TableMenuList>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      allItemsInCartList: freezed == allItemsInCartList
          ? _value.allItemsInCartList
          : allItemsInCartList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AllDishesStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic? function,
      List<TableMenuList>? allDishes,
      bool isLoading,
      bool isError,
      int? quantity,
      List<dynamic>? allItemsInCartList,
      double? total});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AllDishesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? function = freezed,
    Object? allDishes = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? quantity = freezed,
    Object? allItemsInCartList = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_Initial(
      function: freezed == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      allDishes: freezed == allDishes
          ? _value._allDishes
          : allDishes // ignore: cast_nullable_to_non_nullable
              as List<TableMenuList>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      allItemsInCartList: freezed == allItemsInCartList
          ? _value._allItemsInCartList
          : allItemsInCartList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.function,
      required final List<TableMenuList>? allDishes,
      required this.isLoading,
      required this.isError,
      required this.quantity,
      required final List<dynamic>? allItemsInCartList,
      required this.total})
      : _allDishes = allDishes,
        _allItemsInCartList = allItemsInCartList;

  @override
  final dynamic? function;
  final List<TableMenuList>? _allDishes;
  @override
  List<TableMenuList>? get allDishes {
    final value = _allDishes;
    if (value == null) return null;
    if (_allDishes is EqualUnmodifiableListView) return _allDishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final int? quantity;
  final List<dynamic>? _allItemsInCartList;
  @override
  List<dynamic>? get allItemsInCartList {
    final value = _allItemsInCartList;
    if (value == null) return null;
    if (_allItemsInCartList is EqualUnmodifiableListView)
      return _allItemsInCartList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? total;

  @override
  String toString() {
    return 'AllDishesState(function: $function, allDishes: $allDishes, isLoading: $isLoading, isError: $isError, quantity: $quantity, allItemsInCartList: $allItemsInCartList, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.function, function) &&
            const DeepCollectionEquality()
                .equals(other._allDishes, _allDishes) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other._allItemsInCartList, _allItemsInCartList) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(function),
      const DeepCollectionEquality().hash(_allDishes),
      isLoading,
      isError,
      quantity,
      const DeepCollectionEquality().hash(_allItemsInCartList),
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements AllDishesState {
  const factory _Initial(
      {required final dynamic? function,
      required final List<TableMenuList>? allDishes,
      required final bool isLoading,
      required final bool isError,
      required final int? quantity,
      required final List<dynamic>? allItemsInCartList,
      required final double? total}) = _$_Initial;

  @override
  dynamic? get function;
  @override
  List<TableMenuList>? get allDishes;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  int? get quantity;
  @override
  List<dynamic>? get allItemsInCartList;
  @override
  double? get total;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
