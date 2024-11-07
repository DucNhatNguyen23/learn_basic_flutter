import 'package:flutter/material.dart';

class SearchInfo extends StatelessWidget {
  const SearchInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: 'Hey Halal, ',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              TextSpan(
                  text: 'Good Afternoon!',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ])),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF0F5FA),
                      prefixIcon: const Icon(Icons.search_rounded),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)
                      ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
