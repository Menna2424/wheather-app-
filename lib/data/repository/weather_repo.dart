import '../models/data.dart';
import '../web_services/weather_api.dart';

class WeatherRepo {
  final WeatherAPI weatherAPI;

  WeatherRepo(this.weatherAPI);

  // Use lat and lon parameters without hardcoding them
  Future<Autogenerated?> getWeather(double lat, double lon) async {
    return await weatherAPI.getWeather(lat, lon);
  }
}