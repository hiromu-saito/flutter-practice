import 'package:clima/location.dart';
import 'package:clima/services/networking.dart';

const apiUrl = 'https://api.openweathermap.org/data/2.5/weather';
const apiKey = '';

class WeatherModel {
  Future<dynamic> getWeatherDataByCityName(String cityName) async {
    NetworkHelper networkHelper =
        NetworkHelper('$apiUrl?units=metric&q=$cityName&appid=$apiKey');
    var weahterData = await networkHelper.getData();
    return weahterData;
  }

  Future<dynamic> getWeatherData() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$apiUrl?units=metric&lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey');
    var weahterData = await networkHelper.getData();
    return weahterData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
