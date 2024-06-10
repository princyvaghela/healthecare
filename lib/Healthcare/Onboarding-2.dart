import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthecare/Healthcare/Onboarding-1.dart';

import 'Onboarding-3.dart';

class twoScreen extends StatefulWidget {
  const twoScreen({super.key});

  @override
  State<twoScreen> createState() => _twoScreenState();
}

class _twoScreenState extends State<twoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              children: [

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset("assets/Untitled.png",fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 670),
                  child: Row(
                    children: [
                      Text("Get advice only from a\n"
                        "doctor you believe in.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 350,top:70),
                  child: InkWell(
                      onTap: () {
                        Get.to(OneScreen());
                      },

                      child: Text("Skip",style: TextStyle(color: Color(0xffA1A8B0)))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 770),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 5,
                        decoration: BoxDecoration(color: Color(0xffA1A8B0),borderRadius:   BorderRadius.circular(2)),
                      ),
                      Container(
                        width: 20,
                        height: 5,
                        decoration: BoxDecoration(color:Color(0xff407CE2),borderRadius:   BorderRadius.circular(2)),
                      ),

                      SizedBox(width: 250,),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color(0xff407CE2)),
                        child: InkWell(
                            onTap: () {
                              Get.to(threeScreen());
                            },
                            child: Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 28)),
                      )
                    ],
                  ),
                ),
              ]
          ),

        ],
      ),
    );
  }
}
