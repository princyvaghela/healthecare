import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthecare/Healthcare/home_page.dart';

import 'Pharmacy_Screen.dart';

class AmbulanceScreen extends StatefulWidget {
  const AmbulanceScreen({super.key});

  @override
  State<AmbulanceScreen> createState() => _AmbulanceScreenState();
}

class _AmbulanceScreenState extends State<AmbulanceScreen> {
  TextEditingController searchController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
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
          child: Text("Ambulance",
              style: TextStyle(
                  fontSize: 23,
                  color: Color(0XFF303030),
                  fontWeight: FontWeight.bold)),
        ),
      ),
      body: ListView(
        children: [
          Stack(
      children:[
        Image.asset("assets/Ambulance.jpg",fit: BoxFit.cover,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 25,top: 30),
              child: Container(
                width: 370,
                height: 55,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Email";
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.w500),
                  controller: searchController,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Icon(Icons.search_rounded, color: Colors.grey.shade600,size: 25,),
                      ),
                      label: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Search location, ZIP code..",
                          style: TextStyle(color: Colors.grey.shade600, fontSize: 17),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 650,left: 40,right: 40),
          child: Container(
            width: 400,
            height: 250,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 110),
                  child: Text("Confirm your address",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20) ,),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(width: 370,
                height: 2,
                color: Colors.grey.shade300,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.location_on_rounded,color: Colors.red,size: 35,),
                    ),
                    SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left:0,top: 12),
                      child: Text("Flat No. 50, Mahalaxmi Shop,\n"
                          "Upkaar, 36, Barpokhar (E),\n"
                          "Siwan, Bihar, Pincode-880212",style: TextStyle( color: Colors.grey.shade600,fontSize: 18)),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0xff407CE2),borderRadius: BorderRadius.circular(25)),
                   child: Center(child: Text("Confirm Location",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                )
              ],
            ),
          ),
        ),
        


    ]
      ),


    ],
      ),
    );
  }
}
