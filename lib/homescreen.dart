import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luli/music_player.dart';
import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

import 'musiclist/artist_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.04,
          ),
          Row(
            children: [
              SizedBox(
                width: Get.width * 0.05,
              ),
              Container(
                height: Get.height * 0.07,
                width: Get.width * 0.76,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Search song',
                        prefixIcon: Icon(Icons.search,
                            color: Colors.black, size: Get.height * 0.023),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
              ),
              SizedBox(
                width: Get.width * 0.04,
              ),
              AnimatedIconButton(icons: [
                AnimatedIconItem(
                    icon: Icon(Icons.light_mode),
                    onPressed: () {
                      Get.changeTheme(ThemeData.light());
                    }),
                AnimatedIconItem(
                    icon: Icon(Icons.dark_mode),
                    onPressed: () {
                      Get.changeTheme(ThemeData.dark());
                    })
              ])
            ],
          ),
          SizedBox(
            height: Get.height * 0.06,
            child: Row(
              children: [
                SizedBox(
                  width: Get.width * 0.03,
                ),
                Text(
                  'Recently Played',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Get.height * 0.026,
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Davido(),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                BurnaBoy(),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Wizkid(),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Fireboy(),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Asake(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
