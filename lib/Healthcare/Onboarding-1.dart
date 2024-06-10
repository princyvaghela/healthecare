import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Onboarding-2.dart';
import 'Spalsh_screen.dart';

class OneScreen extends StatefulWidget {
  const OneScreen({super.key});

  @override
  State<OneScreen> createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset("assets/Onboarding-1.jpg",fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 670),
                child: Row(
                  children: [
                    Text("Find a lot of specialist\n"
                        "doctors in one place",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 350,top:70),
                child: InkWell(
                  onTap: () {
                    Get.to(SpalshScreen());
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
                      decoration: BoxDecoration(color: Color(0xff407CE2),borderRadius:   BorderRadius.circular(2)),
                    ),
                    Container(
                      width: 20,
                      height: 5,
                      decoration: BoxDecoration(color:Color(0xffA1A8B0),borderRadius:   BorderRadius.circular(2)),
                    ),

                    SizedBox(width: 250,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color(0xff407CE2)),
                      child: InkWell(
                        onTap: () {
                          Get.to(twoScreen());
                        },
                          child: Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 28)),
                    )
                  ],
                ),
              ),



              // Padding(
              //   padding: const EdgeInsets.only(left: 25,),
              //   child: Text("Find a lot of specialist\n"
              //       " doctors in one place",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              // )
            ]
          ),

        ],
      ),
    );
  }
}
