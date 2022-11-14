import 'package:encuesta/config/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_count_down.dart';

class QuizTimerWidget extends StatelessWidget {
  const QuizTimerWidget({super.key, required this.duration});
  final int duration;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 75,
        child: Countdown(
          seconds: duration,
          build: (BuildContext context, double time) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "$time",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                textAlign: TextAlign.center,
                " Sec",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          interval: const Duration(milliseconds: 100),
          onFinished: () {
            print('Timer is done!');
          },
        ));
  }
}
