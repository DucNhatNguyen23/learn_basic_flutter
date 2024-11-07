import 'package:flutter/material.dart';
import 'package:flutter_learn/cart/cart.dart';
import 'package:flutter_learn/home/type.dart';
import 'package:flutter_learn/login/login.dart';
import 'package:flutter_learn/restaurant/type.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({super.key, required this.data});

  final RestaurantResponse data;

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  int cart = 0;
  Food food = Food(
      'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
      50000);

  @override
  Widget build(BuildContext context) {
    final restaurant = widget.data;
    return Scaffold(
      backgroundColor: const Color(0xffededed),
      appBar: AppBar(
        backgroundColor: const Color(0xffFF7622),
        title: Text(
          restaurant.name,
          style: const TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: const Color(0xffededed),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 140,
              child: Image.network(restaurant.image, fit: BoxFit.cover),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
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
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: const Color(0xffededed), width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(food.image),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 80,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Burger'),
                                  Text(
                                    food.price.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        cart > 0
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    cart--;
                                  });
                                },
                                icon: const Icon(
                                  Icons.indeterminate_check_box,
                                  size: 40,
                                ))
                            : const SizedBox.shrink(),
                        Text(
                          cart > 0 ? cart.toString() : '',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                cart++;
                              });
                            },
                            icon: const Icon(
                              Icons.add_box,
                              size: 40,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            cart > 0
                ? Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                        width: 370,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xffFF7622),
                                padding: EdgeInsets.symmetric(vertical: 10)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CartScreen(cart: ParamsCart(cart, food.image, food.price),
                                          )));
                            },
                            child: const Text(
                              'Go to cart ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ))),
                  )
                : SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
