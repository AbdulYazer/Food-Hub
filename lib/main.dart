import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_hub/application/signUp/signup_bloc.dart';
import 'package:food_hub/domain/core/di/injectable.dart';
import 'package:food_hub/presentation/login_screen.dart';

import 'application/Dishes/dishes_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignupBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<AllDishesBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Hub',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
