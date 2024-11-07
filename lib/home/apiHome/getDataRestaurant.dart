import 'package:flutter_learn/home/type.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<RestaurantResponse>> getDataRestaurant() async {
  final String apiUrl =
      'https://672c655c1600dda5a9f84779.mockapi.io/restaurant';

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((json) => RestaurantResponse.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load items');
  }
}
