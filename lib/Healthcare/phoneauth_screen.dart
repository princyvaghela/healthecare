import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Otp_screen.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({super.key});

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  TextEditingController PhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("PhoneAuth",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: PhoneController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: "Enter phone number", suffixIcon: Icon(Icons.phone), border: OutlineInputBorder(borderRadius: BorderRadius.circular(24))),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.verifyPhoneNumber(
                  verificationCompleted: (PhoneAuthCredential crendential) {},
                  verificationFailed: (FirebaseAuthException ex) {},
                  codeSent: (String verificationid, int? resendtoken) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(verificationid: verificationid),));
                  },
                  codeAutoRetrievalTimeout: (String verficationId) {},
                  phoneNumber: PhoneController.text.toString(),
                );
              },
              child: Text("Verify Phone Number")),
        ],
      ),
    );
  }
}
