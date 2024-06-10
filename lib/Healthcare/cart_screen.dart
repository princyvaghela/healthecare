import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthecare/Healthcare/Pharmacy_detalis.dart';
import 'package:healthecare/Healthcare/home_page.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool isIncrement = false;
  bool isremove = false;
  int counter = 0;
  int Counter = 0;
  List product = [
    {
      "image": "assets/12.jpg",
      "title": "OBH Combi",
      "text": "75ml",
      "price": "\$9.99",
      "qty": 1,
    },
    {
      "image": "assets/Image.png",
      "title": "Panadol",
      "text": "75ml",
      "price": "\$19.99",
      "qty": 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30, top: 30),
          child: InkWell(
              onTap: () {
                Get.to(PharmacyDetalis());
              },
              child: Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Text("My cart",
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0XFF303030),
                  fontWeight: FontWeight.bold)),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: product.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: 500,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(20),
                                  child: Image.asset(
                                    "${product[index]["image"]}",
                                    width: 70,
                                    height: 70,
                                  )),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 20),
                                child: Text(
                                  "${product[index]["title"]}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "${product[index]["text"]}",
                                  style: TextStyle(
                                      color: Color(0XFF8C8A9D),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 10),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: InkWell(
                                              onTap: () {
                                                if (product[index]["qty"] > 1) {
                                                  product[index]["qty"]--;
                                                }
                                                isIncrement = false;
                                                setState(() {});
                                              },
                                              child: Container(
                                                height: MediaQuery.of(context).size.height / 32,
                                                width: MediaQuery.of(context).size.width / 16,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: isIncrement == false
                                                        ? Color(0xff407CE2)
                                                        : Colors.white),
                                                child: Icon(Icons.remove,size: 20,
                                                    color: isIncrement == false
                                                        ? Colors.white
                                                        : Color(0xff407CE2)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10, left: 10),
                                            child: Text(
                                                "${product[index]["qty"]}",
                                                style: const TextStyle(
                                                    fontSize: 25)),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              isIncrement = true;
                                              product[index]["qty"]++;
                                              setState(() {});
                                            },
                                            child: Container(
                                                height: MediaQuery.of(context).size.height / 30,
                                                width: MediaQuery.of(context).size.width /16,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: isIncrement == true
                                                        ? Color(0xff407CE2)
                                                        : Colors.white),
                                                child: Icon(Icons.add,size: 20,
                                                    color: isIncrement == false
                                                        ? Color(0xff407CE2)
                                                        : Colors.white)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 40,
                                            ),
                                            child: Text(
                                              "${product[index]["price"]}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 40),
                            child: InkWell(
                              onTap: () {
                                product.removeAt(index);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.delete_outlined,
                                size: 25,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200, top: 10),
            child: Text(
              "Payment Detail",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 20, top: 10),
            child: Row(
              children: [
                Text(
                  "Subtotal",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 250,
                ),
                Text("\$25.98",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 20, top: 10),
            child: Row(
              children: [
                Text(
                  "Taxes",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 267,
                ),
                Text("\$1.00",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 20, top: 10),
            child: Row(
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 274,
                ),
                Text("\$26.98",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 360,
            height: 1,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 180,top: 20),
            child: Text(
              "Payment Method",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only( top: 20),
            child: Container(
              width: 355,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Text("VISA",style:  TextStyle(color: Color(0xff1A1F71),fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(width:220,),
                  Text("Change",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                  child: Container(
                    width: 370,
                    height: 99,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 270),
                          child: Column(
                            children: [
                              Text("Total",style: TextStyle(color: Colors.grey,fontSize: 17),),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 27,bottom: 20 ),
                              child: Text("\$28.98",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(
                              width: 110,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 25,left: 50),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(
                                    AlertDialog(
                                      actions: [
                                        Column(
                                          children: [
                                            SizedBox(height: 20,),
                                            Center(
                                              child: Container(
                                                width: 150,
                                                height: 150,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffF5F8FF).withOpacity(0.5),
                                                  borderRadius: BorderRadius.circular(75),

                                                ),
                                                child: Icon(Icons.done_rounded,color: Color(0xff407CE2),size: 100,),
                                              ),
                                            ),
                                            SizedBox(height: 20,),

                                            Text('Payment Success',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                                            SizedBox(height: 20,),



                                            Text('     Your payment has been\n   successful, you can have a\n consultation session with your\n                trusted doctor',
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 18),),
                                            SizedBox(height: 20,),

                                            GestureDetector(
                                              onTap: () {
                                                Get.to(HomeScreen());
                                              },
                                              child: Container(
                                                height: 70,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius: BorderRadius.circular(50),

                                                ),

                                                child: Center(
                                                  child: Text('Back to Home',style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold
                                                  ),),
                                                ),

                                              ),
                                            ),

                                          ],
                                        )


                                      ],
                                    )
                                  );
                                },
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(color: Color(0xff407CE2),borderRadius: BorderRadius.circular(20)),
                                  child: Center(child: Text("Checkout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                                ),
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),

                  ),
                )

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
