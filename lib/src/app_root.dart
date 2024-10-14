import 'package:breaking_bad/presentation/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_logic/weather_cubit.dart';
import '../data/repository/weather_repo.dart';
import '../data/web_services/weather_api.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    weatherRepo = WeatherRepo(WeatherAPI());
    weatherCubit = WeatherCubit(weatherRepo);
  }

  late WeatherRepo weatherRepo;

  late WeatherCubit weatherCubit;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
          create: (BuildContext contxt) => WeatherCubit(weatherRepo),
      child: FirstScreen(),
      ),
    );
  }
}
