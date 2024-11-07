
import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
                width: 45,
                height: 45,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffECF0F4),
                      borderRadius: BorderRadius.circular(1000)),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.list)),
                )),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('DELIVER TO',
                    style: TextStyle(
                        color: Color(0xffFC6E2A),
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                Text('Halal Lap office',
                    style: TextStyle(
                        color: Color(0xff676767),
                        fontSize: 14,
                        fontWeight: FontWeight.normal))
              ],
            )
          ],
        ),
        SizedBox(
          width: 45,
          height: 45,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000), color: Colors.black),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag),
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}