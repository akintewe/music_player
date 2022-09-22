import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luli/musiclist/asake.dart';
import 'package:luli/musiclist/burnaboy.dart';
import 'package:luli/musiclist/wizkd.dart';

import '../music_player.dart';
import 'fireboy.dart';

class Asake extends StatelessWidget {
  const Asake({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => Asake_music());
      },
      child: Container(
        height: Get.height * 0.24,
        width: Get.width * 0.5,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/asake.jpeg'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class Fireboy extends StatelessWidget {
  const Fireboy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => Fireboy_music());
      },
      child: Container(
        height: Get.height * 0.24,
        width: Get.width * 0.5,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fireboy.jpg'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class Wizkid extends StatelessWidget {
  const Wizkid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => Wizkid_music());
      },
      child: Container(
        height: Get.height * 0.24,
        width: Get.width * 0.5,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/wizkid.jpg'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class BurnaBoy extends StatelessWidget {
  const BurnaBoy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => BurnaBoy_music());
      },
      child: Container(
        height: Get.height * 0.24,
        width: Get.width * 0.5,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/burnaboy1.jpg'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class Davido extends StatelessWidget {
  const Davido({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => Music());
      },
      child: Container(
        height: Get.height * 0.24,
        width: Get.width * 0.5,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/davido.jpeg'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
