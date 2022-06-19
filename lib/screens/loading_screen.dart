import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import '/services/location.dart';
import 'dart:convert';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getLocation();
  }

  void getData() async {
    http.Response response = await http.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139');

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);


      var longtitude = json.decode(data)['coord']['lat'];
      var latitude = json.decode(data)['coord']['lon'];
      var weatherDescription = json.decode(data)['weather'][0]['main'];
      var condition = json.decode(data)['weather'][0]['id'];
      var cityName = json.decode(data)['name'];


    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
