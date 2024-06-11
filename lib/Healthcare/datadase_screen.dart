import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  Future addUser(String userId,Map<String,dynamic> useerInfoMap){
    return FirebaseFirestore.instance.collection("User").doc(userId).set(useerInfoMap);
  }
}