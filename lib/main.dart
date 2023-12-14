import 'package:flutter/material.dart';

import 'controller/hotels_controller.dart';
import 'screens/list_of_hotels_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final HotelsController _listOfHotelsController = HotelsController();
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    _listOfHotelsController.getHotels();
    return  MaterialApp(home: ListOfHotels());
  }
}
