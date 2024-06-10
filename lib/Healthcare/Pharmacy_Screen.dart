import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthecare/Healthcare/home_page.dart';

import 'Pharmacy_detalis.dart';
import 'doctor_details.dart';

class PharmacyScreen extends StatefulWidget {
  const PharmacyScreen({super.key});

  @override
  State<PharmacyScreen> createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
  List item = [
    {
      "pic": "assets/Image.png",
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

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30, top: 30),
          child: InkWell(
              onTap: () {
                Get.to(HomeScreen());
              },
              child: Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Text("Pharmacy",
              style: TextStyle(
                  fontSize: 23,
                  color: Color(0XFF303030),
                  fontWeight: FontWeight.bold)),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 20, top: 30),
                child: Container(
                  width: 360,
                  height: 55,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Search drugs, category...";
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
                          "Search drugs, category...",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue.shade100),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets. only( left: 25,right: 25),
            child: Stack(children: [
              Container(
                width: 372,
                height: 162,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade100,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Text(
                      "Order quickly with",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: Text(
                      "Prescription",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 20),
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff407CE2)),
                  child: Center(
                      child: Text(
                    "Upload Prescription",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200,),
                child: Image.asset(
                  "assets/Mask_group-removebg-preview.png",
                  height: 180,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ]),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30),
                child: Text(
                  "Popular Product",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                width: 140,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 12,right: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/ef58faa9a71e47e02e217bca7aa11595.jpg",width: 100,height: 130,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 90,),
                              child: Text("Panadol",  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text("20pcs",style:TextStyle(fontSize: 15,color: Colors.grey) ,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Text("\$15.99",style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                                  SizedBox(width: 50),
                                  Container(
                                    width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff407CE2)),
                                  child: Icon(Icons.add,color: Colors.white,),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/12.jpg",width: 100,height: 130,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:32 ,),
                              child: Text("Bodrex Herbal",  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text("100ml",style:TextStyle(fontSize: 15,color: Colors.grey) ,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Text("\$7.99",style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                                  SizedBox(width: 62),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff407CE2)),
                                    child: Icon(Icons.add,color: Colors.white,),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/4260006585123.jpg",width: 100,height: 130,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 90,),
                              child: Text("Konidin",  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text("3pcs",style:TextStyle(fontSize: 15,color: Colors.grey) ,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Text("\$5.99",style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                                  SizedBox(width: 62),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff407CE2)),
                                    child: Icon(Icons.add,color: Colors.white,),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                  ],
                ),
              )
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 30),
                child: Text(
                  "Product on Sale",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                width: 140,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 12,right: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(PharmacyDetalis());
                              },
                              child: Image.asset(
                                "assets/Image.png",width: 100,height: 130,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50,),
                              child: Text("OBH Combi",  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text("75ml",style:TextStyle(fontSize: 15,color: Colors.grey) ,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Text("\$9.99",style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                                  SizedBox(width: 7,),
                                  Text("\$10.99",style: TextStyle(fontSize: 15,color: Colors.grey,decoration: TextDecoration.lineThrough),),
                                  SizedBox(width: 15),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff407CE2)),
                                    child: Icon(Icons.add,color: Colors.white,),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/12.jpg",width: 100,height: 130,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:70 ,),
                              child: Text("Betadine",  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text("50ml",style:TextStyle(fontSize: 15,color: Colors.grey) ,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Text("\$6.99",style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                                  SizedBox(width: 8,),
                                  Text("\$8.99",style: TextStyle(fontSize: 15,color: Colors.grey,decoration: TextDecoration.lineThrough),),
                                  SizedBox(width: 25),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff407CE2)),
                                    child: Icon(Icons.add,color: Colors.white,),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/4260006585123.jpg",width: 100,height: 130,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 78,),
                              child: Text("Bodrexin",  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text("75ml",style:TextStyle(fontSize: 15,color: Colors.grey) ,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Text("\$7.99",style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                                  SizedBox(width: 7,),
                                  Text("\$8.99",style: TextStyle(fontSize: 15,color: Colors.grey,decoration: TextDecoration.lineThrough),),
                                  SizedBox(width: 25),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff407CE2)),
                                    child: Icon(Icons.add,color: Colors.white,),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                  ],
                ),
              )
          ),

        ],
      ),
    );
  }
}
