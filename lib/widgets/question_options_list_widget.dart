import 'package:encuesta/config/themes/themes.dart';
import 'package:flutter/material.dart';

class QuestionOptionsWidget extends StatefulWidget {
  const QuestionOptionsWidget(
      {super.key, required this.options, required this.isTimeOut});
  final List options;
  final bool isTimeOut;

  @override
  State<QuestionOptionsWidget> createState() => _QuestionOptionsWidgetState();
}

class _QuestionOptionsWidgetState extends State<QuestionOptionsWidget> {
  int _selectedOption = -1;
  int answer = 0;
  Color _answerColor = wrongAnswerColor;
  bool _isAnswered = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 40, right: 40),
        itemCount: widget.options.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == answer&&widget.isTimeOut) {
            _answerColor = rightAnswerColor;
            _isAnswered=true;
          } else {
            _answerColor = wrongAnswerColor;
          }
          return OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: widget.isTimeOut && index == _selectedOption ||
                        widget.isTimeOut && index == answer
                    ? _answerColor
                    : Colors.white,
                side: BorderSide(
                    color: index == _selectedOption
                        ? selectedOptionColor
                        : buttonBorderColor,
                    width: 1.5)),
            onPressed: !widget.isTimeOut || !_isAnswered
                ? () {
// -----------------Function to check answer-----------------
                    setState(() {
                      if (index == answer) {
                        _selectedOption = answer;
                        _answerColor = rightAnswerColor;
                        _isAnswered = true;
                      } else {
                        _selectedOption = index;
                        _answerColor = wrongAnswerColor;
                        _isAnswered = true;
                      }
                    });
                  }
                : null,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Text(widget.options[index],
                  style: TextStyle(
                    color: widget.isTimeOut && index == answer ||
                            widget.isTimeOut && index == _selectedOption
                        ? Colors.white
                        : textColor,
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
