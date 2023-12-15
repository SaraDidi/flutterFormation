import 'dart:convert';

import '../models/hotel_model.dart';
import 'package:http/http.dart' as http;

class ApiHotel {
  static String url =
      "https://mocki.io/v1/1f0bdb02-037e-446d-a236-4deac37c18b5";
  Future<List<Hotel>> fetchHotels() async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        List<dynamic> hotelMaps = jsonDecode(response.body);
        final List<Hotel> hotels =
            hotelMaps.map((e) => Hotel.fromJson(e)).toList();
        return hotels;
      } else {
        throw Exception('Failed to fetch hotels: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
