import 'package:flutter/material.dart';

class notiScreen extends StatefulWidget {
  const notiScreen({super.key});

  @override
  State<notiScreen> createState() => _notiScreenState();
}

class _notiScreenState extends State<notiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 320,
          ),
          Center(child: Image.asset("assets/Group 240.jpg",width:300,height: 300,)),
        ],
      )


    );
  }
}