import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/point_table_widget.dart';
import 'package:encuesta/widgets/question_options_list_widget.dart';
import 'package:encuesta/widgets/quiz_question_canvas_widget.dart';
import 'package:encuesta/widgets/quiz_screen_head_widget.dart';
import 'package:encuesta/widgets/quiz_timer_widget.dart';
import 'package:encuesta/widgets/user_id_app_card_widget.dart';
import 'package:encuesta/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HostViewOfGameScreen extends StatefulWidget {
  const HostViewOfGameScreen({super.key});

  @override
  State<HostViewOfGameScreen> createState() => _HostViewOfGameScreenState();
}

class _HostViewOfGameScreenState extends State<HostViewOfGameScreen> {
  bool _isTimeOut = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: APP_COLOR,
              centerTitle: true,
              title: const UserIdAppCardWidget(),
              bottom: const TabBar(
                indicatorColor: tabIndicatorColor,
                labelColor: textColor,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.quiz)),
                  Tab(icon: Icon(Icons.leaderboard)),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const QuizScreenHeadWidget(
                        quizName: "Quiz Name",
                        questionNo: "01",
                        totalQuestion: "20"),
                    const SizedBox(
                      height: 200,
                      child: QuizQuestionCanvas(
                          question: "What is the capital of India?"),
                    ),
                    QuizTimerWidget(
                        duration: 10,
                        onTimeOut: () {
                          setState(() {
                            _isTimeOut = true;
                          });
                        }),
                    QuestionOptionsWidget(
                      options: optionsTextHelpers,
                      isTimeOut: _isTimeOut,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: OutlinedButton(
                          onPressed: () {
                            // forfeit room
                            generalAlertDialog(
                                context,
                                forfeitQuizHelperText,
                                'Do you want to forfeit the quiz?',
                                true,
                                socialPlayScreenRoute);
                          },
                          style: OutlinedButton.styleFrom(
                              minimumSize: const Size(120, 40),
                              side: const BorderSide(
                                  color: negativeButtonBorderColor)),
                          child: const Text(
                            forfeitQuizHelperText,
                            style: TextStyle(color: negativeButtonBorderColor),
                          )),
                    )
                  ],
                ),
                Expanded(
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                        child: PointTableWidget(
                          users: users,
                          points: points,
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
