import 'package:flutter/material.dart';

import '../type.dart';

class MenuHome extends StatefulWidget {
  const MenuHome({super.key});

  @override
  State<MenuHome> createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  String isChoice = 'All';
  final List<MenuList> menus = [
    MenuList('All',
        'https://img.freepik.com/free-photo/top-view-table-full-delicious-food-composition_23-2149141352.jpg'),
    MenuList('Hot dog',
        'https://emas.edu.vn/uploads/images/4/images/Kien%20thuc/2023/HotDog%20(1).jpg'),
    MenuList('Bugger',
        'https://www.shutterstock.com/image-photo/bugger-on-wooden-table-black-600nw-2049015059.jpg'),
    MenuList('Pizza',
        'https://daylambanh.edu.vn/wp-content/uploads/2022/10/cach-lam-pizza-bang-noi-chien-khong-dau.jpg'),
    MenuList('Chicken',
        'https://www.southernliving.com/thmb/UfsmR5OQyqgZSf3qiNs0ZiL2Jts=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/mamas-fried-chicken_audit1819_beauty_197-9d9a60dbcede4c7984c6d670fba69e08.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('All Categories'),
              Row(
                children: [
                  Text('See all'),
                  Icon(
                    Icons.chevron_right,
                    size: 15,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: menus.length,
                itemBuilder: (context, index) {
                  final menu = menus[index];
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffededed)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 10),

                          backgroundColor: isChoice != menu.title
                              ? Colors.white
                              : const Color(0xffFC6E2A),
                          overlayColor: Colors.black),
                      onPressed: () {
                        setState(() {
                          isChoice = menu.title;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipOval(
                            child: Image.network(
                              menu.image,
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            menu.title,
                            style: TextStyle(
                                color: isChoice == menu.title
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
