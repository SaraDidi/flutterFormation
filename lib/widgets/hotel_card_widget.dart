import 'package:flutter/material.dart';

import '../models/hotel_model.dart';

class HotelCardWidget extends StatelessWidget {
  final Hotel hotel;
  const HotelCardWidget({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
