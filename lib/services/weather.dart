class WeatherModel {
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}

// diffrent weather background image for different weather condition
class WeatherBackground {
  String getWeatherBackground(int condition) {
    if (condition < 300) {
      return 'images/thunderstorm.jpg';
    } else if (condition < 400) {
      return 'images/light_rain.jpg';
    } else if (condition < 600) {
      return 'images/rain.jpg';
    } else if (condition < 700) {
      return 'images/snow.jpg';
    } else if (condition < 800) {
      return 'images/fog.jpg';
    } else if (condition == 800) {
      return 'images/clear_sky.jpg';
    } else if (condition <= 804) {
      return 'images/cloudy.jpg';
    } else {
      return 'images/city_background.jpg';
    }
  }
}