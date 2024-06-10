import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Center(
              child: Image.asset(
            "assets/Ellipse 78.jpg",
            width: 100,
            height: 100,
          )),
          SizedBox(height: 10,),
          Text(
            "Ruchita",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 19),
          ),
          SizedBox(
            height: 25,
          ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     _FitnessStat(
          //       icon: Icons.favorite,
          //       label: 'Heart rate',
          //       value: '215bpm',
          //     ),
          //   SizedBox(width: 20,),
          //     _FitnessStat(
          //       icon: Icons.local_fire_department,
          //       label: 'Calories',
          //       value: '756cal',
          //     ),
          //     SizedBox(width: 20),
          //     Divider(height: 30, color: Colors.pink
          //       ,),
          //     _FitnessStat(
          //       icon: Icons.scale,
          //       label: 'Weight',
          //       value: '103lbs',
          //     ),
          //   ],
          // )
          Row(
            children: [
              SizedBox(width: 30,),
              Image.asset("assets/Heartbeat.jpg",height: 40,width: 60,),
              SizedBox(
                width: 80,
              ),
              Image.asset("assets/Fire.jpg",height: 40,width: 60,),
              SizedBox(
                width: 80,
              ),
              Image.asset("assets/8542616_weight_icon 2.jpg",height: 40,width: 60,),
            ],
          ),

          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text("Heart rate",style: TextStyle(color: Color(0xff407CE2),fontSize: 16,fontWeight: FontWeight.normal,),),
              SizedBox(
                width: 70,
              ),
              Text("Calories",style: TextStyle(color: Color(0xff407CE2),fontSize: 16,fontWeight: FontWeight.normal,)),
              SizedBox(
                width:80,
              ),
              Text("Weight",style: TextStyle(color: Color(0xff407CE2),fontSize: 16,fontWeight: FontWeight.normal,)),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text("215bpm",style: TextStyle(color: Color(0xff407CE2),fontSize: 20,fontWeight: FontWeight.bold,)),
              SizedBox(
                width: 72,
              ),
              Text("756cal",style: TextStyle(color: Color(0xff407CE2),fontSize: 20,fontWeight: FontWeight.bold,)),
              SizedBox(
                width: 72,
              ),
              Text("103lbs",style: TextStyle(color: Color(0xff407CE2),fontSize: 20,fontWeight: FontWeight.bold,)),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                SizedBox(width: 30,),
                Image.asset("assets/Group 49.jpg",height: 50,width: 50,),
                SizedBox(width: 30,),
                Text("My Saved",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                SizedBox(width: 150,),
                Icon(Icons.arrow_back_ios_new_rounded,size: 20,)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 360,
            height: 1,
            color: Colors.grey.shade300,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                SizedBox(width: 30,),
                Image.asset("assets/Group 106.jpg",height: 50,width: 50,),
                SizedBox(width: 30,),
                Text("Appointmnet",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                SizedBox(width: 122,),
                Icon(Icons.arrow_back_ios_new_rounded,size: 20,)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 360,
            height: 1,
            color: Colors.grey.shade300,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                SizedBox(width: 30,),
                Image.asset("assets/Group 107.png",height: 50,width: 50,),
                SizedBox(width: 30,),
                Text("Payment Method",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                SizedBox(width: 85,),
                Icon(Icons.arrow_back_ios_new_rounded,size: 20,)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 360,
            height: 1,
            color: Colors.grey.shade300,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                SizedBox(width: 30,),
                Image.asset("assets/Group 108.png",height: 50,width: 50,),
                SizedBox(width: 30,),
                Text("FAQs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                SizedBox(width: 194,),
                Icon(Icons.arrow_back_ios_new_rounded,size: 20,)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 360,
            height: 1,
            color: Colors.grey.shade300,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                SizedBox(width: 30,),
                Image.asset("assets/Group 109.png",height:50,width: 50,),
                SizedBox(width: 30,),
                Text("Logout",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                SizedBox(width: 178,),
                Icon(Icons.arrow_back_ios_new_rounded,size: 20,)
              ],
            ),
          ),

          

        ],
      ),
    );
  }
}

// class _FitnessStat extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final String value;
//
//   const _FitnessStat({
//     Key? key,
//     required this.icon,
//     required this.label,
//     required this.value,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Icon(
//           icon,
//           size: 48,
//           color: Colors.blue,
//         ),
//         const SizedBox(height: 8),
//         Text(
//           label,
//           style: const TextStyle(fontSize: 12, color: Colors.grey),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           value,
//           style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }
