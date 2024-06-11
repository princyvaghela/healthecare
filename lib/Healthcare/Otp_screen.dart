import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthecare/Healthcare/home_page.dart';

class OtpScreen extends StatefulWidget {
  String verificationid;

  OtpScreen({super.key, required this.verificationid});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController OtpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "Otp Screen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: OtpController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter the otp",
                suffixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                try {
                  PhoneAuthCredential Credential =
                  PhoneAuthProvider.credential(verificationId: widget.verificationid, smsCode: OtpController.text.toString()
                  );
                  FirebaseAuth.instance.signInWithCredential(Credential).then((value) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                  });
                } catch (ex) {
                  log(ex.toString());
                }
              },
              child: Text("Otp"))
        ],
      ),
    );
  }
}
