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
          style:const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.green, fontSize: 40),
        ),
        const Text('/',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        Text(gameScoreLimit,
            style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
      ],
    );
  }
}
