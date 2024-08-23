import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/screens/login.dart';
import 'package:project/screens/sign_up.dart';

class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Stack(
              children: [
                Center(
                  child: Column(
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      const Text(
                        "Welcome To BMI",
                        style: TextStyle(
                            fontFamily: "myfont",
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      SvgPicture.asset("assets/icons/chat.svg"),
                      const Spacer(
                        flex: 4,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff653196),
                              minimumSize: const Size(280, 50)),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const login();
                            }));
                          },
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                      const Spacer(
                        flex: 1
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffE2D9EE),
                              minimumSize: const Size(280, 50)),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const signup();
                            }));
                          },
                          child: const Text(
                            "SIGNUP",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                      const Spacer(
                        flex: 8,
                      )
                    ],
                  ),
                ),
                const Positioned(
                    left: 0,
                    child: Image(
                      image: AssetImage(
                        "assets/images/main_top.png",
                      ),
                      width: 100,
                    )),
                const Positioned(
                    bottom: 0,
                    child: Image(
                      image: AssetImage("assets/images/main_bottom.png"),
                      width: 90,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
