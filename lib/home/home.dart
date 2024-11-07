import 'package:flutter/material.dart';
import 'package:flutter_learn/home/components/headerHome.dart';
import 'package:flutter_learn/home/components/menuHome.dart';
import 'package:flutter_learn/home/components/searchInfo.dart';
import 'package:flutter_learn/home/type.dart';

import 'components/mainContent.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Column(
            children: [
              HeaderHome(),
              SearchInfo(),
              MenuHome(),
              MaincontentHome()
            ],
          ),
        ),
      )),
    );
  }
}
