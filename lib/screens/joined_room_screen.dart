import 'dart:html';

import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/user_id_app_card_widget.dart';
import 'package:flutter/material.dart';

class JoinedRoomScreen extends StatefulWidget {
  const JoinedRoomScreen({super.key});

  @override
  State<JoinedRoomScreen> createState() => _JoinedRoomScreenState();
}

class _JoinedRoomScreenState extends State<JoinedRoomScreen> {
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
            quizPoolHelperText,
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.w400),
          ),
          Container(
              padding: const EdgeInsets.only(top: 1),
              width: 300.0,
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Difficulty Level'),
                      const SizedBox(height: 3),
                      Container(
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: buttonBorderColor),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              easyHelperText,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(noOfQuestionsTextHelper),
                          const SizedBox(height: 3),
                          Container(
                              height: 50,
                              width: 145,
                              decoration: BoxDecoration(
                                  border: Border.all(color: buttonBorderColor),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                child: Text(
                                  queNoHelperText,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Time Limit'),
                          const SizedBox(height: 3),
                          Container(
                              height: 50,
                              width: 145,
                              decoration: BoxDecoration(
                                  border: Border.all(color: buttonBorderColor),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                child: Text(
                                  timeHelperText,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text('Category',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 3,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side:
                            const BorderSide(color: positiveButtonBorderColor)),
                    onPressed: () {},
                    child: const ListTile(
                      contentPadding: EdgeInsets.all(2),
                      title: Text('Chosed Category'),
                      trailing: Icon(
                        Icons.check_circle,
                        color: positiveButtonBorderColor,
                      ),
                    ),
                  ),
                ],
              )),
          const Text('Waiting for Host\nto start the Quiz...',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          Container(
            width: 200,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: negativeButtonBorderColor)),
              onPressed: () {},
              child: const ListTile(
                contentPadding: EdgeInsets.all(2),
                title: Center(
                    child: Text(
                  leaveRoomHelperText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: negativeButtonBorderColor),
                )),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
