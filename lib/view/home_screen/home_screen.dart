import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/home_controller.dart';
import '../../model/weather_data_model.dart';
import '../../todays_weather.dart';
import '../../widget/weather_houres.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final WeatherController weatherController = Get.find<WeatherController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: weatherController.getWeatherData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              WeatherModel? weatherModel = snapshot.data;
              return SizedBox(
                width: Get.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * .04, vertical: Get.height * .02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TodaysWeather(weathermodel: weatherModel),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Weather By Hours",
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF3467F3),
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 150,
                        child: HoursWeather(weatherModel: weatherModel),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ));
            }
          }),
    );
  }
}
