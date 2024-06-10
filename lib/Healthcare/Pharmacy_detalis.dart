import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Pharmacy_Screen.dart';
import 'cart_screen.dart';

class PharmacyDetalis extends StatefulWidget {
  const PharmacyDetalis({super.key});

  @override
  State<PharmacyDetalis> createState() => _PharmacyDetalisState();
}
var color1 = Colors.grey;
var color2 = Colors.grey;
var color3 = Colors.grey;
var color4 = Colors.grey;

bool isIncrement = false;
int counter = 0;
int Counter = 0;


class _PharmacyDetalisState extends State<PharmacyDetalis> {

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30, top: 30),
          child: InkWell(
              onTap: () {
                Get.to(PharmacyScreen());
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
          Center(child: Padding(
            padding: const EdgeInsets. only(top: 30),
            child: Image.asset("assets/Image.png",),
          )),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Text("OBH Combi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,),),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Text("75ml",style: TextStyle(fontSize: 20,color: Colors.grey.shade400),),
              ),
              SizedBox(width: 280,),
              Icon(Icons.favorite,color: Colors.red,size: 28,)
            ],
          ),
          SizedBox(height: 9,),
          Row(
            children: [
              SizedBox(width: 30,),
              InkWell(
                onTap: () {
                  color1=Colors.blue;
                  color2=Colors.grey;
                  color3=Colors.grey;
                  color4=Colors.grey;

                  setState(() {

                  });
                },
                child: Icon(
                  Icons.star,size: 25,
                  color: color1,
                ),
              ),
              SizedBox(width: 8,),
              InkWell(
                onTap: () {
                  color1=Colors.blue;
                  color2=Colors.blue;
                  color3=Colors.grey;
                  color4=Colors.grey;

                  setState(() {

                  });
                },
                child: Icon(
                  Icons.star,size: 25,
                  color: color2,
                ),
              ),
              SizedBox(width: 8,),
              InkWell(
                onTap: () {
                  color1=Colors.blue;
                  color2=Colors.blue;
                  color3=Colors.blue;
                  color4=Colors.grey;

                  setState(() {

                  });
                },
                child: Icon(
                  Icons.star,size: 25,
                  color: color3,
                ),
              ),
              SizedBox(width: 8,),
              InkWell(
                onTap: () {
                  color1=Colors.blue;
                  color2=Colors.blue;
                  color3=Colors.blue;
                  color4=Colors.blue;

                  setState(() {

                  });
                },
                child: Icon(
                  Icons.star,size: 25,
                  color: color4,
                ),
              ),
              SizedBox(width: 10,),
              Text("4.0",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 22),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 25),
            child: Row(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(right: 5),
                  child: InkWell(
                    onTap: () {
                      isIncrement = false;
                      counter--;
                      setState(() {});
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width / 9,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(2),
                          color: isIncrement == false
                              ? Color(0xff407CE2)
                              : Colors.white),
                      child: Icon(Icons.remove,size: 29,
                          color: isIncrement == false
                              ? Colors.white
                              : Color(0xff407CE2)),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      right: 10, left: 10),
                  child: Text(
                      "${counter}",
                      style: const TextStyle(
                          fontSize: 25)),
                ),

                InkWell(
                  onTap: () {
                    isIncrement = true;
                  counter++;
                    setState(() {});
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width / 9,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(2),
                          color: isIncrement == true
                              ? Color(0xff407CE2)
                              : Colors.white),
                      child: Icon(Icons.add, size: 29,
                          color: isIncrement == false
                              ? Color(0xff407CE2)
                              : Colors.white)),
                ),
                SizedBox(width: 140,),
                Text("\$9.99",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,top: 30,left: 20),
            child: Text("Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Text("OBH COMBI  is a cough medicine containing,\n"
                    "Paracetamol, Ephedrine HCl, and\n"
                    "Chlorphenamine maleate which is used to relieve\n"
                    "coughs accompanied by flu symptoms such as\n"
                    "fever, headache, and sneezing...",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey)
                  ,),
              ),
              // Text("Read more")
            ],
          ),
          SizedBox(height:40,),
          Padding(
            padding: const EdgeInsets.only(left:  20,right: 20),
            child: Container(
              width:375,
              height: 65,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Color(0xff407CE2),),
              child: Center(child: InkWell(
                onTap: () {
                  Get.to(Cart());
                },
                  child: Text("Buy",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))),

            ),
          )
        ],
      ),

    );
  }
}
