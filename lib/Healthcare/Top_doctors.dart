import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthecare/Healthcare/home_page.dart';

import 'doctor_details.dart';

class TopDoctor extends StatefulWidget {
  const TopDoctor({super.key});

  @override
  State<TopDoctor> createState() => _TopDoctorState();
}

class _TopDoctorState extends State<TopDoctor> {
  List product = [
    {
      "pic": "assets/Image.jpg",
      "text": "Dr.Rishi",
      "catagory": "Chardiologist",
      "icon": Icons.star,
      "text1": "4.7",
      "icon2": Icons.location_on,
      "text2": "800m away"
    },
    {
      "pic": "assets/1.png",
      "text": "Dr. Vaamana",
      "catagory": "Dentists",
      "icon": Icons.star,
      "text1": "4.7",
      "icon2": Icons.location_on,
      "text2": "800m away"
    },
    {
      "pic": "assets/2.png",
      "text": "Dr. Nallarasi",
      "catagory": "Orthopaedic",
      "icon": Icons.star,
      "text1": "4.7",
      "icon2": Icons.location_on,
      "text2": "800m away"
    },
    {
      "pic": "assets/3.png",
      "text": "Dr. Nihal",
      "catagory": "Chardiologist",
      "icon": Icons.star,
      "text1": "4.7",
      "icon2": Icons.location_on,
      "text2": "800m away"
    },
    {
      "pic": "assets/4.png",
      "text": "Dr. Rishita",
      "catagory": "Chardiologist",
      "icon": Icons.star,
      "text1": "4.7",
      "icon2": Icons.location_on,
      "text2": "800m away"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 30,left: 30),
          child: InkWell(
            onTap: () {
              Get.to(HomeScreen());
            },
              child: Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text("Top Doctors",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0XFF303030),
                  fontWeight: FontWeight.bold)),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 40,),
          ListView.builder(
            itemCount: product.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Container(
                      width: 380,
                      height: 110,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, top: 5, right: 5, bottom: 5),
                              child: Container(
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width / 4,
                                decoration: BoxDecoration(color: Colors.black),
                                child: InkWell(
                                  onTap: () {
                                    Get.to(Details());
                                  },
                                  child: Image.asset(
                                    "${product[index]["pic"]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text(
                                  "${product[index]["text"]}",
                                  style: TextStyle(
                                      color: Color(0XFF303030),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text("${product[index]["catagory"]}",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 55),
                                child: InkWell(
                                    onTap: () {
                                      product.removeAt(index);
                                      setState(() {});
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Container(
                                        width: 40,
                                        height: 20,
                                        color: Color(0xffBBDEFB),
                                        child: Row(
                                          children: [
                                            Icon(
                                              product[index]["icon"],
                                              color: Color(0xff407CE2),
                                              size: 15,
                                            ),
                                            Text(
                                              "${product[index]["text1"]}",
                                              style: TextStyle(
                                                  color: Color(0xff407CE2),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    product[index]["icon2"],
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                  Text(
                                    "${product[index]["text2"]}",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 10, right: 10),
                  //   child: Container(
                  //     height: MediaQuery.of(context).size.height / 300,
                  //     width: MediaQuery.of(context).size.width / 1.1,
                  //     decoration: BoxDecoration(color: Color(0XFFF0F0F0)),
                  //   ),
                  // ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
