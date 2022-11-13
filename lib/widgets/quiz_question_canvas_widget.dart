import 'package:flutter/material.dart';

class QuizQuestionCanvas extends StatelessWidget {
  const QuizQuestionCanvas({super.key, required this.question});
  final String question;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(15),
          child: Text(
            question,
            style: const TextStyle(fontSize: 20),
          ),
        ));
  }
}
