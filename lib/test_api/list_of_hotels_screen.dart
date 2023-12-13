import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellow_word/config.dart';
import 'package:hellow_word/test_api/list_of_hotels_controller.dart';

class ListOfHotels extends StatelessWidget {
  ListOfHotels({super.key});
  final ListOfHotelsController _listOfHotelsController =
      ListOfHotelsController();

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
                      return ListTile(
                        title: Text(
                            _listOfHotelsController.hotelsList[index].name),
                        subtitle: Text(
                            "Rating : ${_listOfHotelsController.hotelsList[index].rating}"),
                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              _listOfHotelsController
                                  .hotelsList[index].imageUrl,
                              height: 60,
                              width: 60,
                              fit: BoxFit
                                  .cover, // You can adjust the BoxFit as needed
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
