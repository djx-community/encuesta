import 'package:encuesta/config/themes/themes.dart';
import 'package:flutter/material.dart';

class QuestionOptionsWidget extends StatefulWidget {
  QuestionOptionsWidget({super.key, required this.options});
  final List options;

  @override
  State<QuestionOptionsWidget> createState() => _QuestionOptionsWidgetState();
}

class _QuestionOptionsWidgetState extends State<QuestionOptionsWidget> {
  int _selectedOption = -1;
  Color _answerColor = wrongAnswerColor;
  int answer = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        itemCount: widget.options.length,
        itemBuilder: (BuildContext context, int index) {
          return OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor:index == _selectedOption ? _answerColor : Colors.white,
                side: const BorderSide(color: buttonBorderColor)),
            onPressed: () {
// -----------------Function to check answer-----------------
              setState(() {
                if (index == answer) {
                  _selectedOption = answer;
                  _answerColor = rightAnswerColor;
                } else {
                  _selectedOption = index;
                  _answerColor = wrongAnswerColor;
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(widget.options[index],
                  style: TextStyle(
                    color: index == _selectedOption ? Colors.white : textColor,
                    fontSize: 17,
                  )),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.white,
        ),
      ),
    );
  }
}
