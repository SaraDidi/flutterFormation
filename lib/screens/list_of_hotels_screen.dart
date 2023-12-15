import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/config.dart';
import 'package:hello_word/controllers/hotels_controller.dart';

import '../widgets/hotel_card_widget.dart';

class ListOfHotels extends StatelessWidget {
  ListOfHotels({super.key});
  final HotelsController _listOfHotelsController = HotelsController();

  getHotels() async {
    await _listOfHotelsController.fetchHotels();
  }

  @override
  Widget build(BuildContext context) {
    getHotels();
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: fullHeight(context),
          width: fullWidth(context),
          child: Obx(
            () => _listOfHotelsController.isLoadingHotels.value
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: _listOfHotelsController.hotelsList.length,
                    itemBuilder: (context, index) {
                      return HotelCardWidget(
                          hotel: _listOfHotelsController.hotelsList[index]);
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
