import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/screens/BMI.dart';
import 'package:project/screens/sign_up.dart';

class login extends StatelessWidget {
  const login
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ListView(
                    children:[ Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       const SizedBox(
                          height: 20,
                        ),
                       const  Text(
                          "Log in",
                          style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                        ),
                       const  SizedBox(
                          height: 35,
                        ),
                        SvgPicture.asset(
                          "assets/icons/login.svg",
                          width: 288,
                        ),
                       const SizedBox(
                          height: 25,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 2),
                            color:const Color(0xffF0E6FF),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 300,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child:const TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                hintText: "Your Email :",hintStyle: TextStyle(color: Colors.black),
                                border: InputBorder.none),
                          ),
                        ),
                       const  SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 2),
                            color:const Color(0xffF0E6FF),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 300,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                 
                                suffix: Icon(
                                  Icons.visibility,
                                  color: Colors.purple[900],
                                ),
                                icon:const Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                  size: 19,
                                ),
                                hintText: "Password :",hintStyle:const TextStyle(color: Colors.black),
                                border: InputBorder.none),
                          ),
                        ),
                       const  SizedBox(
                          height: 17,
                        ),
                        ElevatedButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)
                              {
                                return const bmi();
                              }));},
                          
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(const Color(0xff643095)),
                            padding: MaterialStateProperty.all(
                               const  EdgeInsets.symmetric(
                                    horizontal: 106, vertical: 10)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27))),
                          ),
                          child:const  Text(
                            "LOGIN",
                            style: TextStyle(fontSize: 18,color: Colors.white),
                          ),
                        ),
                       const SizedBox(
                          height: 17,
                        ),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                         const    Text("Don't have an accout? "),
                    
                            GestureDetector(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)
                              {
                                return signup();
                              }));},
                              child:const Text(" Sign up", style: TextStyle(fontWeight: FontWeight.bold),)),
                    
                          ],
                        )
                      ],
                    ),
               ] ),
                ),
                Positioned(
                  left: 0,
                  child: Image.asset(
                    "assets/images/main_top.png",
                    width: 111,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/login_bottom.png",
                    width: 111,
                  ),
                ),
              ],
            ),
          ),
        ),
      
      ),
    );
  }
}