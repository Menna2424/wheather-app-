part of 'weather_cubit.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class DataLoaded extends WeatherState {
  final Autogenerated weatherData;

  DataLoaded(this.weatherData);
}

class WeatherError extends WeatherState {
  final String error;

  WeatherError(this.error);
}