import 'package:encuesta/screens/joined_room_screen.dart';
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
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Room ID',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          cancelButton
              ? TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              : const SizedBox(),
          TextButton(
            child: const Text('Join'),
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
