import 'dart:convert';

import 'package:get/get.dart';

import 'hotel_model.dart';
import 'package:http/http.dart' as http;

class ListOfHotelsController extends GetxController {
  var isLoadingHotels = false.obs;

  List<Hotel> hotelsList = [];

  void setIsLoadingHotels(bool newValue) {
    isLoadingHotels.value = newValue;
  }

  Future<List<Hotel>> getHotels() async {
    setIsLoadingHotels(true);
    try {
      final response = await http.get(Uri.parse(
          "https://mocki.io/v1/1f0bdb02-037e-446d-a236-4deac37c18b5"));

      if (response.statusCode == 200) {
        print('-' * 60);
        print(jsonDecode(response.body));
        print('-' * 60);
        List<dynamic> hotelMaps = jsonDecode(response.body);
        final List<Hotel> hotels =
            hotelMaps.map((e) => Hotel.fromJson(e)).toList();
        print("Response Data: $hotels");
        hotelsList = hotels;
        setIsLoadingHotels(false);
        return hotels;
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
    setIsLoadingHotels(false);
    return <Hotel>[];
  }

  ListOfHotelsController(){
    getHotels();
  }
}
