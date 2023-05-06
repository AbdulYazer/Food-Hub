import 'package:dartz/dartz.dart';
import 'package:food_hub/domain/core/failures/main_failure.dart';
import 'package:food_hub/domain/home_page/model/dishes_response/dishes_response.dart';



abstract class HomePageServices {
  Future<Either<MainFailure, TranslatorModel>> fetchDishes();
}
