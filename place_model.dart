class Place {
  final String name;
  final String imageUrl;

  Place({required this.name, required this.imageUrl});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      name: json['name'],
      imageUrl: json['imageUrl'],
    );
  }
}
