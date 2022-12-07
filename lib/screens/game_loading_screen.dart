import 'package:encuesta/config/assets_path/assets_path.dart';
import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/greeting_screen_image_widget.dart';
import 'package:encuesta/widgets/progression_bar_widget.dart';
import 'package:flutter/material.dart';

class GameLoadingScreen extends StatefulWidget {
  const GameLoadingScreen({super.key});

  @override
  State<GameLoadingScreen> createState() => _GameLoadingScreenState();
}

class _GameLoadingScreenState extends State<GameLoadingScreen> {
  int _index = 0;
  double _loadingValue = 0.1;
  @override
  void initState() {
    super.initState();
    delayed(2);
    delayed(4);
    delayed(6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(
            child: GreetingImageAndTextWidget(
              greetingImage: gameLoadingImage,
              greetingMessage: gameLoadingScreenCaptions[_index],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: ProgressionBarWidget(
              loadingText: loading,
              loadingValue: _loadingValue,
            ),
          ),
        ],
      )),
    );
  }

// To Increment index and loading value
  Future<void> incrementIndex() async {
    setState(() {
      _index++;
      _loadingValue += 0.3;
      if (_index == 4) {
        _index = 0;
      } else if (_loadingValue == 1.0) {
        Navigator.of(context).pushReplacementNamed(quickPlayJoinedRoomRoute);
      }
    });
  }

// To create a delay between each loading message
  Future<void> delayed(int sec) async {
    await Future<void>.delayed(Duration(seconds: sec), () {
      incrementIndex();
    });
  }
}
