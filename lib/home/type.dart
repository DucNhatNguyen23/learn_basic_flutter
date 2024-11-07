class MenuList {
  final String title;
  final String image;

  MenuList(this.title, this.image);
}

class RestaurantList {
  final String image;
  final String name;
  final String info;
  final double star;
  final String ship;
  final String time;

  RestaurantList(
      this.image, this.name, this.info, this.star, this.ship, this.time);
}

class RestaurantResponse {
  final String id;

  final String createdAt;
  final String image;
  final String name;
  final String info;
  final int star;
  final String ship;
  final String time;

  RestaurantResponse(
      {required this.createdAt,
      required this.id,
      required this.image,
      required this.name,
      required this.info,
      required this.star,
      required this.ship,
      required this.time});

  factory RestaurantResponse.fromJson(Map<String, dynamic> json) {
    return RestaurantResponse(
        id: json['id'],
        createdAt: json['createdAt'],
        image: json['image'],
        name: json['name'],
        info: json['info'],
        star: json['star'],
        ship: json['ship'],
        time: json['time']);
  }
}
