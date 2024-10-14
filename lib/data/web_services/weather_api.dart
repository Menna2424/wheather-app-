import 'package:dio/dio.dart';
import '../models/data.dart';

class WeatherAPI {
  late Dio dio;

  WeatherAPI() {
    BaseOptions options = BaseOptions(
      baseUrl: "https://api.openweathermap.org/data/2.5/",
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );
    dio = Dio(options);
  }

  Future<Autogenerated?> getWeather(double lat, double lon) async {
    try {
      // Making the GET request
      Response response = await dio.get(
        'weather', // Endpoint
        queryParameters: {
          'lat': lat, // Use the passed latitude
          'lon': lon, // Use the passed longitude
          'appid': '881d8590b80a53cd1f619945b3f011db', // API key
          'units': 'metric', // Metric units for Celsius
        },
      );

      if (response.statusCode == 200) {
        // Parsing the response JSON into your Autogenerated model
        return Autogenerated.fromJson(response.data);
      } else {
        print('Error: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Exception: $e');
      return null;
    }
  }
}
