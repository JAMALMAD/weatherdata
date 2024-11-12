import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:weather_data/service/api_services.dart';
import '../model/weather_data_model.dart';

class WeatherController extends GetxController{

  Future<WeatherModel?> getWeatherData() async {
    const url = "${ApiServices.weatherUrl}&q=Dhaka&days=7";
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        WeatherModel weathermodel = WeatherModel.fromJson(json);
        return weathermodel;
      } else {
        throw "Response is not found";
      }
    } catch (e) {
      Get.defaultDialog(
        title: "Api Exception",
      );
    }
    return null;
  }


}