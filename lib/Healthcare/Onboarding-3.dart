import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthecare/Healthcare/register_screen.dart';
import 'package:healthecare/Healthcare/sign%20in_screen.dart';



class threeScreen extends StatefulWidget {
  const threeScreen({super.key});

  @override
  State<threeScreen> createState() => _threeScreenState();
}

class _threeScreenState extends State<threeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 125),
              child: Container(
                width: Get.width/2.5,
                height: Get.height/2,
                child: Image.asset("assets/Group 212.jpg", width: 0,height: 0,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 350,
              ),
              child: Center(
                  child: Text("Let’s get started!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 390),
              child: Center(
                  child: Text("Login to Stay healthy and fit ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.normal))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 460),
              child: Center(
                child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff407CE2),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                      child: InkWell(
                        onTap: () {
                          Get.to(SignIn());
                        },
                        child: Text("Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,fontSize: 21)),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 550),
              child: Center(
                child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),border: Border.all(color:  Color(0xff407CE2))
                  ),
                  child: Center(
                      child: InkWell(
                        onTap: () {
                          Get.to(SignUp());
                        },
                        child: Text("Sign Up",
                            style: TextStyle(
                                color:  Color(0xff407CE2),
                                fontWeight: FontWeight.normal,fontSize: 21)),
                      )),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}