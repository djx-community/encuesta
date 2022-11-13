import 'package:encuesta/config/themes/themes.dart';
import 'package:flutter/material.dart';

class QuizTimerWidget extends StatelessWidget {
  const QuizTimerWidget({super.key, required this.time});
  final int time;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Stack(
        children: <Widget>[
          const Center(
            child: CircularProgressIndicator(
              strokeWidth: 35,
              value: 0.8,
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation<Color>(PRIMARY_COLOR),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$time Sec",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
