import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthecare/Healthcare/register_screen.dart';

import 'bottam_bar.dart';
import 'home_page.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  bool ispasswordvaildtion = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              SizedBox(
                height: 100,
                width: 30,
              ),
              InkWell(
                onTap: () {
                  Get.to(SignUp());
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 140, top: 10),
                child: Text("Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 15, right: 20),
            child: Form(
              key: _formkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1, top: 25, right: 1),
                    child: TextFormField(
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                      controller: emailController,
                      obscureText: false,
                      decoration: InputDecoration(
                          prefixIcon:
                          Icon(Icons.email_outlined, color: Colors.grey),
                          label: Text("Enter your email",style: TextStyle(color: Colors.grey)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Email";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1, top: 30, right: 1),
                    child: TextFormField(
                      style: const TextStyle(

                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                      controller: passwordController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.shopping_bag_outlined,
                              color: Colors.grey),
                          label: Text("Enter your password",style: TextStyle(color: Colors.grey)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              ispasswordvaildtion
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                ispasswordvaildtion = !ispasswordvaildtion;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Password";
                        }
                        return null;
                      },
                      obscureText: !ispasswordvaildtion,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250, top: 10),
            child: Text(
              "Forgot password?",
              style: TextStyle(
                  color: Color(0xff407CE2),
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                width: 370,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff407CE2),
                ),
                child: Center(
                    child: InkWell(
                      onTap: () {
                        if (_formkey.currentState!.validate())
                          Get.to(HomeScreen());
                      },
                      child: InkWell(
                        onTap: () {
                          Get.to(BottombarScreen());
                        },
                        child: Text("Sign In ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, top: 10),
            child: Row(
              children: [
                Text("Don’t have an account? ",
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                InkWell(
                    onTap: () {
                      Get.to(SignUp());
                    },
                    child: Text("Sign up ",
                        style:
                        TextStyle(color: Color(0xff407CE2), fontSize: 18,fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 30, top: 50),
            child: Row(
              children: [
                Container(
                  width: 165,
                  height: 1,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
                Text(
                  "OR",
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  width: 165,
                  height: 1,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45,left: 30, right: 25),
            child: Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset("assets/Google.jpg",height: 20,width: 20,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Sign in with Google",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 25,left: 30),
            child: Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset("assets/Facebook-removebg-preview.png",height: 20,width: 20,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Sign in with Facebook",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}