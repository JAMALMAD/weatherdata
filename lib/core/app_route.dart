import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:weather_data/view/home_screen/home_screen.dart';

class AppRoute{
  static const String homeScreen = '/homeScreen';

  static List<GetPage> getPage = [
    GetPage(name: homeScreen, page: ()=> HomeScreen()),
  ];
}