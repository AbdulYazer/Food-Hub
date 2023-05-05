// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/Dishes/dishes_bloc.dart' as _i5;
import '../../../infrastructure/home_page/home_page_impl.dart' as _i4;
import '../../home_page/homepage_services.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.HomePageServices>(() => _i4.HomePageImpl());
  gh.factory<_i5.AllDishesBloc>(
      () => _i5.AllDishesBloc(get<_i3.HomePageServices>()));
  return get;
}
