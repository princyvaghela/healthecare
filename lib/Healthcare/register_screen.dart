
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthecare/Healthcare/sign%20in_screen.dart';

import 'Onboarding-3.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  usersingup(String name, String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  bool ispasswordvaildtion = false;
  bool isLoading = false;

  bool _checkboxListTile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              SizedBox(
                height: 120,
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Get.to(threeScreen());
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 140, top: 10),
                child: Text("Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25, right: 20),
            child: Form(
              key: _formkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    controller: nameController,
                    obscureText: false,
                    decoration: InputDecoration(
                        prefixIcon:
                        Icon(Icons.person_2_outlined, color: Colors.grey),
                        label: Text("Enter your name",style: TextStyle(color: Colors.grey)),
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
                        return "Please Enter Name";
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1, top: 30, right: 1),
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
            padding: const EdgeInsets.only(left: 10),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Row(
                children: [
                  SizedBox(height: 30,),
                  Text(
                    "I agree to the healthcare",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                  ),
                  Text(
                    "Terms of ",
                    style: TextStyle(color: Color(0xff407CE2), fontSize: 15),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text("Service",
                      style: TextStyle(color: Color(0xff407CE2), fontSize: 15)),SizedBox(width: 5,),
                  Text("and", style: TextStyle(color: Colors.black)),
                  SizedBox(width: 5,),
                  Text("Privacy Policy",
                      style: TextStyle(color: Color(0xff407CE2))),
                ],
              ),
              value: _checkboxListTile,
              onChanged: (value) {
                setState(() {
                  _checkboxListTile = !_checkboxListTile;
                });
              },
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff407CE2),
                ),
                child: Center(
                    child: InkWell(
                      onTap: () {
                        if (_formkey.currentState!.validate());
                        usersingup(nameController.text, emailController.text, passwordController.text);
                          Get.to(SignIn());
                      },
                      child: Text("Sign Up ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120,top: 20),
            child: Row(
              children: [
                Text("Don’t have an account? ",style: TextStyle(color: Colors.black,fontSize: 16)),
                InkWell(
                    onTap: () {
                      Get.to(SignIn());
                    },
                    child: Text("Sign In ",style: TextStyle(color: Color(0xff407CE2),fontSize: 16,fontWeight: FontWeight.bold ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}