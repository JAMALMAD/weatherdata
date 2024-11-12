import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_data/core/app_route.dart';
import 'package:weather_data/core/dependency.dart';

void main() {
  DependencyInjection di = DependencyInjection();
  di.dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoute.homeScreen,
      getPages: AppRoute.getPage,
    );
  }
}
