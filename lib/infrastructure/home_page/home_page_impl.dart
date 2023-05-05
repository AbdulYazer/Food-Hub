import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:food_hub/domain/core/api_end_points.dart';
import 'package:food_hub/domain/core/failures/main_failure.dart';
import 'package:food_hub/domain/home_page/homepage_services.dart';
import 'package:food_hub/domain/home_page/model/dishes_response/dishes_response.dart';
import 'package:injectable/injectable.dart';

import '../../domain/home_page/models/home_page_response/home_page_response.dart';

@LazySingleton(as: HomePageServices)
class HomePageImpl implements HomePageServices {
  @override
  Future<Either<MainFailure, TranslatorModel>> fetchDishes() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.baseUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // print(response.data.runtimeType);
        final result = TranslatorModel.fromJson(response.data[0]);
        print(result);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
