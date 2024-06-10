import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Onboarding-1.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {


@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.to(OneScreen());
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            child: Image.asset("assets/Spalsh screen.jpg",fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
