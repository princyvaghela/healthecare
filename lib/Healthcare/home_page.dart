import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Ambulance_screen.dart';
import 'Pharmacy_Screen.dart';
import 'Top_doctors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Container(
              width: Get.width,
              height: Get.height,
              child: Image.asset(
                "assets/Untitled.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 80),
              child: Image.asset(
                "assets/Ellipse 78.jpg",
                width: 50,
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 20),
              child: Text(
                "welcome !",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 170, left: 20),
              child: Text(
                "Ruchita",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 20, top: 330),
                  child: Container(
                    width: 320,
                    height: 40,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Email";
                        }
                        return null;
                      },
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                      controller: searchController,
                      decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.search_rounded, color: Colors.grey),
                          label: Text(
                            "Search doctor, drugs, articles...",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 380, left: 15),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(TopDoctor());
                    },
                    child: Image.asset(
                      "assets/Group_165-removebg-preview.png",
                      width: 130,
                      height: 130,
                    ),
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(PharmacyScreen());
                    },
                    child: Image.asset(
                      "assets/Group_166-removebg-preview.png",
                      width: 130,
                      height: 130,
                    ),
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(AmbulanceScreen());
                    },
                    child: Image.asset(
                      "assets/Group_167-removebg-preview.png",
                      width: 130,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 450),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "Top Doctors",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Pharmacy",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                  ),
                  SizedBox(
                    width:50,
                  ),
                  Text(
                    "Ambulance",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 490, left: 30),
              child: Row(
                children: [
                  Text(
                    "Health article",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 175,
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Color(0xff407CE2), fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 550, left: 25,right: 25),
              child: Container(
                width: 390,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade400)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Image.asset(
                        "assets/Rectangle 460.jpg",
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "The 25 Healthiest Fruits You Can\n"
                                " Eat, According to a Nutritionist",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Icon(
                              Icons.bookmark,
                              color: Color(0xff407CE2),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 87),
                          child: Text(
                            "Jun 10, 20223  5min read",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 640, left: 25,right: 25),
              child: Container(
                width: 390,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade400)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Image.asset("assets/Rectangle 954.jpg",
                          width: 70, height: 70),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                  "The 25 Healthiest Fruits You Can\n"
                                  " Eat, According to a Nutritionist",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              width: 42,
                            ),
                            Icon(
                              Icons.bookmark,
                              color: Color(0xff407CE2),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 87),
                          child: Text(
                            "Jun 10, 20223  5min read",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 730, left: 25,right: 25),
              child: Container(
                width: 390,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade400)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Image.asset("assets/Rectangle 954.jpg",
                          width: 70, height: 70),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                  "The 25 Healthiest Fruits You Can\n"
                                  " Eat, According to a Nutritionist",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              width: 58,
                            ),
                            Icon(
                              Icons.bookmark,
                              color: Color(0xff407CE2),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 87),
                          child: Text(
                            "Jun 10, 20223  5min read",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
