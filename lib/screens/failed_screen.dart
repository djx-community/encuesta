import 'dart:async';

import 'package:encuesta/config/assets_path/assets_path.dart';
import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/greeting_screen_image_widget.dart';
import 'package:encuesta/widgets/score_display_Widget.dart';
import 'package:flutter/material.dart';

class FailedScreen extends StatefulWidget {
  const FailedScreen({super.key});

  @override
  State<FailedScreen> createState() => _FailedScreenState();
}

class _FailedScreenState extends State<FailedScreen> {
  @override
  void initState() {
    super.initState();
    changeToLeaderBoardScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_COLOR,
      body: SafeArea(
          child: Column(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: GreetingImageAndTextWidget(
              greetingImage: failedImage,
              greetingMessage: negativeGreeting,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text(
              yourScore,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Center(
                  child: ScoreDisplayWidget(
                      liveScore: gameScore, gameScoreLimit: scoreLimit))),
        ],
      )),
    );
  }

  Future<void> changeToLeaderBoardScreen(context) async {
    await Future<dynamic>.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacementNamed(leaderBoardScreenRoute);
  }
}
