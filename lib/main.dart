import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/list_of_hotels_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: ListOfHotels());
  }
}
