import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/question_options_list_widget.dart';
import 'package:encuesta/widgets/quiz_question_canvas_widget.dart';
import 'package:encuesta/widgets/quiz_screen_head_widget.dart';
import 'package:encuesta/widgets/quiz_timer_widget.dart';
import 'package:encuesta/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SinglePlayerGameScreen extends StatefulWidget {
  const SinglePlayerGameScreen({super.key});

  @override
  State<SinglePlayerGameScreen> createState() => _SinglePlayerGameScreenState();
}

class _SinglePlayerGameScreenState extends State<SinglePlayerGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const QuizScreenHeadWidget(
                quizName: "Quiz Name", questionNo: "01", totalQuestion: "20"),
            const QuizQuestionCanvas(question: "What is the capital of India?"),
            QuizTimerWidget(
                duration: 60,
                onTimeOut: () {
                  print("Time Out");
                }),
            const QuestionOptionsWidget(
              options: optionsTextHelpers,
              isTimeOut: false,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OutlinedButton(
                    onPressed: () {
                      generalAlertDialog(context, quitQuizHelperText,
                          "Do you want to quit?", true, homeScreenRoute);
                    },
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(120, 40),
                        side: const BorderSide(color: Colors.red, width: 1)),
                    child: const Text(
                      quitQuizHelperText,
                      style: TextStyle(color: Colors.red),
                    )),
                const SizedBox(
                  width: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      backgroundColor:
                          const Color.fromARGB(255, 214, 255, 252)),
                  onPressed: () {
                    Navigator.of(context).pushNamed(winningScreenRoute);
                  },
                  child: const Text(
                    nextHelperText,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
