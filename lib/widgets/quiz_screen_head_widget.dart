import 'package:dotted_line/dotted_line.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:flutter/material.dart';

class QuizScreenHeadWidget extends StatelessWidget {
  const QuizScreenHeadWidget(
      {super.key,
      required this.quizName,
      required this.questionNo,
      required this.totalQuestion});
  final String quizName, questionNo, totalQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  <Widget>[
          Text(
            quizName,
            style:const TextStyle(fontSize: 18),
          ),
         const SizedBox(
            height: 5,
          ),
          Text(
            '$questionHelperText $questionNo/$totalQuestion',
            style:const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
         const DottedLine(
            lineThickness: 2,
            dashLength: 10,
          ),
        ],
      ),
    );
  }
}
