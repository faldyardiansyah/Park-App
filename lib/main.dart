import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Jangan lupa import get-nya!
import 'package:parkcar_app/pages/main_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ParkCar App',
      home: const MainNavigation(),
    );
  }
}