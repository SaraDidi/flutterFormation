class Hotel {
  String name;
  String rating;
  String imageUrl;

  Hotel({
    required this.name,
    required this.rating,
    required this.imageUrl,
  });

  // Named constructor to create an instance of Hotel from a JSON map
  factory Hotel.fromJson(Map<String, dynamic> json) {
    return Hotel(
      name: json['name'] ?? '',
      rating: json['rating'] ?? '',
      imageUrl: json['image_url'] ?? '',
    );
  }

  // Method to convert a Hotel instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'rating': rating,
      'image_url': imageUrl,
    };
  }
}
