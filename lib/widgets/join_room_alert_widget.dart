import 'package:encuesta/screens/joined_room_screen.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:flutter/material.dart';

Future<void> joinRoomAlertDialog(
    BuildContext context, String title, bool cancelButton) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children:const <Widget>[
              TextField(
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: roomIdHelperText,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: passwordHelperText,
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          cancelButton
              ? TextButton(
                  child: const Text(cancelHelperText),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              : const SizedBox(),
          TextButton(
            child: const Text(joinRoomHelperText),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const JoinedRoomScreen())));
            },
          ),
        ],
      );
    },
  );
}
