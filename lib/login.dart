
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'homescreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(249, 249, 249, 1),
        body: Stack(children: [
          //Top back icon
          Positioned(
              top: Get.height * 0.04,
              left: Get.width * 0.04,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new_rounded),
                iconSize: Get.height * 0.03,
                color: Colors.white,
              )),
          //Bottom widget that contains the dont have an account signup??
          Positioned(
            top: Get.height * 0.48,
            left: Get.width * 0.13,
            right: Get.width * 0.13,
            child: Container(
              height: Get.height * 0.3,
              width: Get.width * 0.4,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(227, 227, 227, 1),
                      spreadRadius: 5,
                      blurRadius: 7,
                    )
                  ]),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.25,
                  ),
                  Row(children: [
                    SizedBox(width: Get.width * 0.06),
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Get.height * 0.02,
                          color: Color.fromRGBO(88, 73, 255, 1)),
                    ),
                  ]),
                ],
              ),
            ),
          ),
          //widget that contains the username and password field
          Positioned(
              top: Get.height * 0.12,
              left: Get.width * 0.07,
              right: Get.width * 0.07,
              child: Container(
                height: Get.height * 0.58,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(227, 227, 227, 1),
                        spreadRadius: 5,
                        blurRadius: 7,
                      )
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      SizedBox(
                        width: Get.width * 0.047,
                      ),
                      Text('Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: Get.height * 0.03,
                            fontFamily: 'Inter',
                          ))
                    ]),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        Text(
                          'Email/Username',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: Get.height * 0.02,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: Get.height * 0.07,
                          width: Get.width * 0.76,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(217, 215, 215, 1),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: Get.height * 0.02,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: Get.height * 0.07,
                          width: Get.width * 0.76,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(217, 215, 215, 1),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.black,
                                      size: Get.height * 0.023),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.07,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(()=>HomeScreen(), transition: Transition.fadeIn);
                          },
                          child: Container(
                              height: Get.height * 0.08,
                              width: Get.width * 0.76,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(88, 73, 255, 1),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Center(
                                  child: Text('Sign in',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          fontSize: Get.height * 0.03,
                                          color: Color.fromRGBO(
                                              253, 255, 254, 1))))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.036,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Text('Forgot Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: Get.height * 0.02,
                          )),
                      SizedBox(
                        width: Get.width * 0.06,
                      )
                    ]),
                  ],
                ),
              )),

          Positioned(
            bottom: Get.height * 0.1,
            right: Get.width * 0.10,
            child: Container(
              height: Get.height * 0.08,
              width: Get.width * 0.78,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(
                      color: Color.fromRGBO(88, 73, 255, 1), width: 2)),
              child: Center(
                  child: Text(
                'Sign up with Google',
                style: TextStyle(
                    color: Color.fromRGBO(88, 73, 255, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    fontSize: Get.height * 0.023),
              )),
            ),
          ),

          Positioned(
              bottom: Get.height * 0.04,
              right: Get.width * 0.28,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Lightplay',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Get.height * 0.02)),
                  SizedBox(
                    height: Get.height * 0.04,
                    width: Get.width * 0.1,
                    child: Lottie.asset('assets/7688-music-app-loader.json'),
                  )
                ],
              ))
        ]));
  }
}
