import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../format_time.dart';

class BurnaBoy_music extends StatefulWidget {
  @override
  State<BurnaBoy_music> createState() => _MusicState();
}

class _MusicState extends State<BurnaBoy_music> {
  final audioplayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
    setAudio();
    audioplayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioplayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioplayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    audioplayer.setReleaseMode(ReleaseMode.loop);

    String url =
        'https://cdn.trendybeatz.com/audio/Burna-Boy-Common-Person-(TrendyBeatz.com).mp3';
    audioplayer.setSourceUrl(url);
  }

  @override
  void dispose() {
    audioplayer.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: MediaQuery.of(context).size.width * 0.13,
              right: MediaQuery.of(context).size.width * 0.86,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      ))
                ],
              )),
          Positioned(
              //top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.44,
              right: MediaQuery.of(context).size.width * 0.05,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.42,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/burnaboy1.jpg'),
                        fit: BoxFit.fill)),
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.width * 0.78,
              right: MediaQuery.of(context).size.width * 0.3,
              child: Row(
                children: [
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.red,
                    size: 30,
                  ),
                  Text(
                    'Common Person',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                    ),
                  )
                ],
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.width * 0.74,
              right: MediaQuery.of(context).size.width * 0.4,
              child: Row(
                children: [
                  Text(
                    'Burna Boy',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  )
                ],
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.width * 0.6,
              right: MediaQuery.of(context).size.width * 0.1,
              left: MediaQuery.of(context).size.width * 0.07,
              child: Slider(
                onChanged: (value) async {
                  final position = Duration(seconds: value.toInt());
                  await audioplayer.seek(position);

                  await audioplayer.resume();
                },
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.width * 0.5,
              right: MediaQuery.of(context).size.width * 0.1,
              left: MediaQuery.of(context).size.width * 0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    formatTime(position),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(formatTime(duration - position),
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ],
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.width * 0.4,
              right: MediaQuery.of(context).size.width * 0.42,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 35,
                  child: IconButton(
                    onPressed: () async {
                      if (isPlaying) {
                        await audioplayer.pause();
                      } else {
                        await audioplayer.resume();
                      }
                    },
                    icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                    iconSize: 50,
                  ),
                ),
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.width * 0.3,
              right: MediaQuery.of(context).size.width * 0.2,
              child: Row(
                children: [],
              )),
        ],
      ),
    );
  }
}
