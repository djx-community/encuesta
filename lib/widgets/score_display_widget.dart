import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:flutter/material.dart';

class ScoreDisplayWidget extends StatelessWidget {
  final  liveScore;
  final gameScoreLimit;
  const ScoreDisplayWidget(
      {super.key, required this.liveScore, required this.gameScoreLimit});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          liveScore,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.green, fontSize: 40),
        ),
        Text('/',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        Text(gameScoreLimit,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
      ],
    );
  }
}
