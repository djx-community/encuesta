import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/quiz_timer_widget.dart';
import 'package:encuesta/widgets/widgets.dart';
import 'package:flutter/material.dart';

class QuickPlayJoinedRoomScreen extends StatelessWidget {
  const QuickPlayJoinedRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              quizPoolHelperText,
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  children: [
                    TextField(
                      controller: TextEditingController(text: 'easy'),
                      readOnly: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: buttonBorderColor)),
                          labelText: selectedDifficultyLevelHelperText,
                          enabled: false),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: TextField(
                            controller:
                                TextEditingController(text: difficultyLevel[1]),
                            readOnly: true,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                disabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: buttonBorderColor)),
                                labelText: noOfQuestionsTextHelper,
                                enabled: false),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: TextField(
                            controller:
                                TextEditingController(text: timeHelperText),
                            readOnly: true,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                disabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: buttonBorderColor)),
                                labelText: timeLimitHelperText,
                                enabled: false),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: TextEditingController(text: category[2]),
                      readOnly: true,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ),
                          border: OutlineInputBorder(),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)),
                          labelText: selectedCategoryHelperText,
                          enabled: false),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      letsStartTheQuizHelperText,
                      style: TextStyle(fontSize: 20),
                    ),
                    QuizTimerWidget(
                        duration: 10,
                        onTimeOut: () {
                          Navigator.of(context)
                              .pushReplacementNamed(quizScreenRoute);
                        }),
                    const SizedBox(
                      height: 50,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          generalAlertDialog(
                              context,
                              'Exit Room',
                              'Do you want to exit the lobby?',
                              true,
                              homeScreenRoute);
                        },
                        style: OutlinedButton.styleFrom(
                            minimumSize: const Size(120, 40),
                            side: const BorderSide(
                                color: negativeButtonBorderColor, width: 1)),
                        child: const Text(
                          cancelHelperText,
                          style: TextStyle(color: negativeButtonBorderColor),
                        )),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
