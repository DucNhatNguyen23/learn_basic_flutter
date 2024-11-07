import 'package:flutter/material.dart';
import 'package:flutter_learn/home/apiHome/getDataRestaurant.dart';
import 'package:flutter_learn/home/type.dart';

import '../../restaurant/restaurant.dart';

class MaincontentHome extends StatefulWidget {
  const MaincontentHome({super.key});

  @override
  State<MaincontentHome> createState() => _MaincontentHomeState();
}

class _MaincontentHomeState extends State<MaincontentHome> {
  late Future<List<RestaurantResponse>> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getDataRestaurant();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FutureBuilder<List<RestaurantResponse>>(
        future: data,
        builder: (BuildContext context,
            AsyncSnapshot<List<RestaurantResponse>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(child: CircularProgressIndicator()),
            );
          } else if (snapshot.hasError) {
            return const Center(
                child: Text('Lỗi: Thao tác lấy dữ liệu bị gián đoạn'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Không có nhà hàng nào'));
          } else {
            final restaurants = snapshot.data!;
            return ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 20),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: restaurants.length,
              itemBuilder: (BuildContext context, int index) {
                return RenderContent(restaurant: restaurants[index]);
              },
            );
          }
        },
      ),
    );
  }
}

class RenderContent extends StatelessWidget {
  const RenderContent({super.key, required this.restaurant});

  final RestaurantResponse restaurant;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Restaurant(
                        data: restaurant,
                      )));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 137,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                ),
                child: Image.network(
                  restaurant.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: const Border(
                    left: BorderSide(width: 1, color: Color(0xffededed)),
                    right: BorderSide(width: 1, color: Color(0xffededed)),
                    bottom: BorderSide(width: 1, color: Color(0xffededed)),
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      restaurant.info,
                      style: const TextStyle(color: Color(0xffA0A5BA)),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xffFF7622),
                              size: 20,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              restaurant.star.toString(),
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(width: 20),
                        Row(
                          children: [
                            const Icon(
                              Icons.local_shipping,
                              color: Color(0xffFF7622),
                              size: 20,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              restaurant.ship,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(width: 20),
                        Row(
                          children: [
                            const Icon(
                              Icons.timer,
                              color: Color(0xffFF7622),
                              size: 20,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              restaurant.time,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
