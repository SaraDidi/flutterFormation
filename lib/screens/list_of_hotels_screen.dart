import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellow_word/config.dart';
import 'package:hellow_word/controller/hotels_controller.dart';
import 'package:hellow_word/moudles/hotel_model.dart';

class ListOfHotels extends StatelessWidget {
  ListOfHotels({super.key});
  final HotelsController _listOfHotelsController = HotelsController();

  _hotelCart(Hotel hotel) {
    return ListTile(
      title: Text(hotel.name),
      subtitle: Text("Rating : ${hotel.rating}"),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 5, // Blur radius
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            hotel.imageUrl,
            height: 60,
            width: 60,
            fit: BoxFit.cover, // You can adjust the BoxFit as needed
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                      return _hotelCart(_listOfHotelsController.hotelsList[index]);
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
