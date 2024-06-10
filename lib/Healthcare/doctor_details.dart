import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Pharmacy_Screen.dart';
import 'Top_doctors.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List princy = [
    {"day": "Mon", "date": "21"},
    {"day": "Tue", "date": "22"},
    {"day": "Wed", "date": "23"},
    {"day": "Thu", "date": "24"},
    {"day": "Fri", "date": "25"},
    {"day": "Sat", "date": "26"},
    {"day": "Sun", "date": "27"},
  ];
  int selectedName = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.to(TopDoctor());
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 30,top: 25),
              child: Icon(Icons.arrow_back_ios_new_outlined),
            )),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 20,top: 25),
          child: Text("Doctor Detail",
              style: TextStyle(
                  fontSize: 23,
                  color: Color(0XFF303030),
                  fontWeight: FontWeight.bold)),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 350,
                height: 114,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset("assets/Image.jpg"),
                    ),
                    Column(
                      children: [
                        Text(
                          "Dr. Rishi",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Chardiologist",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25, top: 8),
                          child: Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xffBBDEFB)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xff407CE2),
                                  size: 20,
                                ),
                                Text(
                                  "4.7",
                                  style: TextStyle(
                                      color: Color(0xff407CE2),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: Colors.grey,
                            ),
                            Text("800m away",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 80,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "About",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipi elit,\n"
              "sed do eiusmod tempor incididunt ut laore et\n"
              "dolore magna aliqua. Ut enim ad minim veniam...",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42, top: 3),
            child: Row(
              children: [
                Text(
                  "Read more",
                  style: TextStyle(
                      color: Color(0xff407CE2), fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: princy.length,
              itemExtent: 85,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        selectedName = index;
                        debugPrint("index$index");
                        debugPrint("selectedName$selectedName");
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 88,
                          width: 56,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(22),
                            color: index == selectedName
                                ? Color(0xff407CE2)
                                : Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "${princy[index]["day"]}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff221F1F)),
                                ),
                              ),
                              Text(
                                "${princy[index]["date"]}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            width: 390,
            height: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade100),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(child: Text("09:00 AM")),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade100),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(child: Text("10:00 AM")),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade100),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(child: Text("11:00 AM")),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade100),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(child: Text("01:00 AM")),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade100),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(child: Text("02:00 AM")),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade100),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(child: Text("03:00 AM")),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade100),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(child: Text("04:00 AM")),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade100),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(child: Text("07:00 AM")),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade100),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(child: Text("08:00 AM")),
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Container(
            width: 300,
            height: 58,
            decoration: BoxDecoration(color: Color(0xff407CE2),borderRadius: BorderRadius.circular(50)),
            child: Center(child: InkWell(onTap: () {
              Get.to(PharmacyScreen());
            },
              child: Text("Book Apointment",style: TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold),))),
          )
        ],
      ),
    );
  }
}
