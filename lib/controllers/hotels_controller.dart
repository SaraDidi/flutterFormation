import 'package:get/get.dart';

import '../models/hotel_model.dart';
import '../services/api_hotel.dart';

class HotelsController extends GetxController {
  var isLoadingHotels = false.obs;
  final ApiHotel apiHotel = ApiHotel();

  List<Hotel> hotelsList = [];

  void setIsLoadingHotels(bool newValue) {
    isLoadingHotels.value = newValue;
  }

  Future<void> fetchHotels() async {
    try {
      setIsLoadingHotels(true);
      final hotels = await apiHotel.fetchHotels();
      hotelsList = hotels;
      setIsLoadingHotels(false);
    } catch (e) {
      setIsLoadingHotels(false);
    }
  }
}
