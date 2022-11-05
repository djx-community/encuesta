import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/quiz_category_widget.dart';
import 'package:encuesta/widgets/user_id_app_card_widget.dart';
import 'package:flutter/material.dart';

class HostingScreen extends StatefulWidget {
  const HostingScreen({super.key});

  @override
  State<HostingScreen> createState() => _HostingScreenState();
}

class _HostingScreenState extends State<HostingScreen> {
  int _timer = 5;
  int _noOfQuestions = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
            child: UserIdAppCardWidget(),
          ),
          const SizedBox(height: 1),
          const Text(
            quizConfigurationHelperText,
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.w400),
          ),
          Container(
              padding: const EdgeInsets.only(top: 1),
              width: 300.0,
              child: Column(
                children: [
                  DropdownButtonFormField<String>(
                    isDense: true,
                    isExpanded: false,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    items: difficultyLevel
                        .map((String value) => DropdownMenuItem(
                              alignment: Alignment.center,
                              value: value,
                              child: Text(value),
                            ))
                        .toList(),
                    hint: const Text(difficultyLevelHelperText),
                    onChanged: (value) {
                      // print(value);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: buttonBorderColor),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (_noOfQuestions > 1) {
                                  _noOfQuestions--;
                                }
                              });
                            },
                            icon: const Icon(Icons.minimize)),
                        _noOfQuestions != 1
                            ? Text("$_noOfQuestions",
                                style: const TextStyle(fontSize: 20))
                            : const Text(noOfQuestionsTextHelper),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _noOfQuestions++;
                              });
                            },
                            icon: const Icon(Icons.add)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: buttonBorderColor),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (_timer >= 6) {
                                  _timer--;
                                }
                              });
                            },
                            icon: const Icon(Icons.minimize)),
                        _timer != 5
                            ? Text("$_timer sec",
                                style: const TextStyle(fontSize: 20))
                            : const Text(timerTextHelper),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _timer = _timer + 5;
                              });
                            },
                            icon: const Icon(Icons.add)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(categoryHelperText,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 400,
                      child: QuizCategoryListWidget(categoryList: category)),
                  Container(
                    width: double.infinity,
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              // changeToHomeScreen(context);
                            },
                            style: OutlinedButton.styleFrom(
                                minimumSize: const Size(120, 40),
                                side: const BorderSide(
                                    color: buttonBorderColor, width: 1)),
                            child: const Text(
                              specialHelperText,
                              style: TextStyle(color: buttonBorderColor),
                            )),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(120, 40),
                              backgroundColor: PRIMARY_COLOR),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, hostedLobbyScreenRoute);
                          },
                          child: const Text(
                            nextHelperText,
                            style: TextStyle(color: textColor),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ],
      )),
    );
  }
}