import 'package:flutter/material.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only( left: 20,top: 30,right: 20),
            child: Stack(
              children: [
                Container(
                  width:400,
                  height: 160,
                  decoration:  BoxDecoration(color: Color(0xffDBE6F9,),  borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top:  20),
                            child: Text("Heart rate",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23),),
                          ),



                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only( left: 20,),
                            child: Text("97",style: TextStyle(fontSize: 72,fontWeight: FontWeight.bold),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only( top: 40),
                            child: Text("bpm",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                          ),
                          SizedBox(width: 20,),
                          Center(child: Image.asset("assets/Vector_12-removebg-preview.png",width: 180,height: 100,)),
                        ],
                      ),
                    ],
                  ),
                 ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Container(
                width: 160,
                 height: 180,
                decoration: BoxDecoration(color: Color(0xffD9BFC9),borderRadius: BorderRadius.circular(5)),
                child:Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(right: 55),
                          child: Icon(Icons. water_drop,color: Color(0xff9C4A6B) ,size: 27,),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Blood Group",style: TextStyle(color: Colors.black,fontWeight:FontWeight.w500,fontSize: 18),),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: Row(
                            children: [
                              Text("A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45),),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ) ,
              ),
              SizedBox(
                width:35,
              ),
              Container(
                width: 160,
                 height: 180,
                decoration: BoxDecoration(color: Color(0xffFBF0DC),borderRadius: BorderRadius.circular(5)),
                child:Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child:Image.asset("assets/weight-lifting-up-svgrepo-com_1-removebg-preview.png",width: 30,height: 30,)
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text("Weight",style: TextStyle(color: Colors.black,fontWeight:FontWeight.w500,fontSize: 18),),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text("103lbs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ) ,
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(right: 200,top: 20),
            child: Text("Latest report ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25,right: 25),
            child: Container(
              width: 390,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7),
                    child: Image.asset(
                      "assets/Group 249.jpg",
                      width: 70,
                      height: 70,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 2,top: 10),
                            child: Text(
                            "General  report",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 100,

                          ),
                          Icon(
                            Icons.more_horiz_outlined,
                            color:Colors.black,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 155),
                        child: Text(
                          "Jul 10, 2023 ",
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25,right: 25),
            child: Container(
              width: 390,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7),
                    child: Image.asset(
                      "assets/Group 249.jpg",
                      width: 70,
                      height: 70,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 2,top: 10),
                            child: Text(
                            "General  report",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 101,

                          ),
                          Icon(
                            Icons.more_horiz_outlined,
                            color:Colors.black,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 160),
                        child: Text(
                          "Jul 5, 2023 ",
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
