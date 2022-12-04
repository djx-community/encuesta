import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/user_id_app_card_widget.dart';
import 'package:encuesta/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class JoinedRoomScreen extends StatefulWidget {
  const JoinedRoomScreen({super.key});

  @override
  State<JoinedRoomScreen> createState() => _JoinedRoomScreenState();
}

class _JoinedRoomScreenState extends State<JoinedRoomScreen> {
  @override
  void initState() {
    super.initState();
    changeToQuizScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
            child: UserIdAppCardWidget(),
          ),
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                waitingForPlayersHelperText,
                style: TextStyle(fontSize: 20),
              ),
              JumpingDotsProgressIndicator(
                fontSize: 50,
                color: Colors.blue,
              ),
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
      )),
    );
  }

  Future<void> changeToQuizScreen(context) async {
    await Future<dynamic>.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacementNamed(quizScreenRoute);
  }
}
