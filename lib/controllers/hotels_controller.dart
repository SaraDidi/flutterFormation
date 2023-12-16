import 'package:get/get.dart';

import '../models/hotel_model.dart';
import '../services/api_hotel.dart';

class HotelsController extends GetxController {
  @override
  void onInit() {
    fetchHotels();
    super.onInit();
  }

  var isLoadingHotels = false.obs;
  final ApiHotel apiHotel = ApiHotel();

  List<Hotel> hotelsList = [];

  void setIsLoadingHotels(bool newValue) {
    isLoadingHotels.value = newValue;
  }

  Future<void> fetchHotels() async {
    try {
      setIsLoadingHotels(true);
      hotelsList = await apiHotel.fetchHotels();

      setIsLoadingHotels(false);
    } catch (e) {
      setIsLoadingHotels(false);
    }
  }
}
