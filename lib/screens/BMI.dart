import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project/screens/result.dart';
class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

// ignore: camel_case_types
class _bmiState extends State<bmi> {
  int height = 120;
  bool ismale = true;
  int age = 22;
    int weight = 90;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff0A0E31),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xff121639),
            title: const Text(
              "BMI CALCULATOR",
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 25, left: 20),
                        height: 165,
                        width: 120,
                        decoration: BoxDecoration(
                            color: ismale
                                ? const Color(0xffFF0066)
                                : const Color(0xff282B4E),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.male,
                              size: 135,
                              color: Colors.white,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 25, right: 20),
                        height: 165,
                        width: 120,
                        decoration: BoxDecoration(
                            color: !ismale
                                ? const Color(0xffFF0066)
                                : Color(0xff282B4E),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.female,
                              size: 135,
                              color: Colors.white,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 190,
                margin: const EdgeInsets.only(top: 25, right: 20, left: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xff282B4E)),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "HEIGHT",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Slider(
                      activeColor: const Color(0xffFF0066),
                      inactiveColor: Colors.white,
                      value: height.toDouble(),
                      max: 220,
                      min: 35,
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 220,
                      decoration: const BoxDecoration(color: Color(0xff272B4E)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "WEIGHT",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          Text(
                            "$weight",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 65,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      backgroundColor: Colors.grey[900],
                                      minimumSize: const Size(20, 60)),
                                  onPressed: () {
                                    setState(() {
                                        weight++;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.add,
                                    size: 25,
                                    color: Color(0xffFF0066),
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      backgroundColor: Colors.grey[900],
                                      minimumSize: const Size(20, 60)),
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 10) {
                                        weight--;
                                      }
                                    });
                                  },
                                  child: const Icon(
                                    Icons.remove,
                                    size: 25,
                                    color: Color(0xffFF0066),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: Container(
                      height: 220,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: const BoxDecoration(color: Color(0xff272B4E)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "AGE",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          Text(
                            "$age",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 65,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      backgroundColor: Colors.grey[900],
                                      minimumSize: const Size(20, 60)),
                                  onPressed: () {
                                    setState(() {
                                        age++;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.add,
                                    size: 25,
                                    color: Color(0xffFF0066),
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      backgroundColor: Colors.grey[900],
                                      minimumSize: const Size(20, 60)),
                                  onPressed: () {
                                    setState(() {
                                      if(age>0){
                                        age--;}
                                    });
                                  },
                                  child: const Icon(
                                    Icons.remove,
                                    size: 25,
                                    color: Color(0xffFF0066),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
             const SizedBox(height: 35),
              ElevatedButton(
          
                style:ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                  backgroundColor:const Color(0xffFF0066),
                  minimumSize:const Size(365, 60),
                ) ,
                onPressed: () {
                  var res = weight/pow(height/100, 2);
                 
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return  RResult(age: age,ismale: ismale,res:res ,height:height,weight: weight,);
                  }));
                }, 
                child: const Text('CALCULATE YOUR BMI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),))
            ],
          ),
        ),
      ),
    );
  }
}
