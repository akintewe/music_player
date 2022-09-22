
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.6,
              width: Get.width * 1,
              child: Lottie.asset(
                'assets/loginanimator.json',
              ),
            ),
            row1_introduction(),
            SizedBox(
              height: Get.height * 0.02,
            ),
            row2_introduction(),
            row3_introduction(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'radio stations, and bill board music',
                  style: TextStyle(
                    fontSize: Get.height * 0.016,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Everything is just one click away...',
                  style: TextStyle(
                    fontSize: Get.height * 0.016,
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.06,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                onTap: () {
                  Future.delayed(Duration(seconds: 3), () {
                    isLoading = false;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                    setState(() {});
                  });
                  setState(() {
                    isLoading = true;
                  });
                },
                child: Container(
                  height: Get.height * 0.08,
                  width: Get.width * 0.78,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Color.fromRGBO(88, 73, 255, 1), width: 2),
                  ),
                  child: isLoading
                      ? Center(
                          child: CircularProgressIndicator(
                            color: Color.fromRGBO(88, 73, 255, 1),
                            strokeWidth: 3,
                          ),
                        )
                      : Center(
                          child: Text(
                            'Lets Go',
                            style: TextStyle(
                                color: Color.fromRGBO(88, 73, 255, 1),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat',
                                fontSize: Get.height * 0.023),
                          ),
                        ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}

class row3_introduction extends StatelessWidget {
  const row3_introduction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'in one go, and enjoy all your favourite podcasts,',
          style: TextStyle(
            fontSize: Get.height * 0.016,
          ),
        )
      ],
    );
  }
}

class row2_introduction extends StatelessWidget {
  const row2_introduction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Get all your favourite playlists and artists',
          style: TextStyle(
            fontSize: Get.height * 0.016,
          ),
        )
      ],
    );
  }
}

class row1_introduction extends StatelessWidget {
  const row1_introduction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome to Lightplay',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(88, 73, 255, 1),
            fontSize: Get.height * 0.03,
          ),
        ),
        SizedBox(
          height: Get.height * 0.04,
          width: Get.width * 0.1,
          child: Lottie.asset('assets/7688-music-app-loader.json'),
        )
      ],
    );
  }
}
