import 'package:flutter/material.dart';

import 'test_api/list_of_hotels_controller.dart';
import 'test_api/list_of_hotels_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final ListOfHotelsController _listOfHotelsController = ListOfHotelsController();
   MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    _listOfHotelsController.getHotels();
    return  MaterialApp(home: ListOfHotels());
  }
}
