import 'package:flutter/material.dart';

Future<void> generalAlertDialog(BuildContext context,String title, String message,bool cancelButton) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title:  Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children:  <Widget>[
              Text(message),
              // Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          cancelButton? TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ):const SizedBox(),
          TextButton(
            child: const Text('Confirm'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}