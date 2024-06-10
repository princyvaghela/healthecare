
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Healthcare/Spalsh_screen.dart';
import 'Healthcare/Top_doctors.dart';
import 'Healthcare/bottam_bar.dart';
import 'Healthcare/doctor_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDYdxYgWiqX_Tq6BeThSncSqwQ2Fkf2WBk",
          appId: "1:59923897750:android:140a3cd71df63bc06551b7",
          messagingSenderId: "59923897750",
          projectId: "healthecare-b7c20"));
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:SpalshScreen(),
    );
  }
}
