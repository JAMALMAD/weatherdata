import 'package:get/get.dart';
import 'package:weather_data/controller/home_controller.dart';

class DependencyInjection extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>WeatherController());
  }

}