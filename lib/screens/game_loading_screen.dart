import 'package:encuesta/config/assets_path/assets_path.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: const <Widget>[
          GreetingImageAndTextWidget(
            greetingImage: gameLoadingImage,
            greetingMessage: stayTuned,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 100, 40, 0),
            child: ProgressionBarWidget(
              loadingText: loading,
              loadingValue: loadingValue,
            ),
          ),
        ],
      )),
    );
  }
}
