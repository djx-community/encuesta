import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:flutter/material.dart';

// General SnackBar Widget
Future<void> generalSnackBar(BuildContext context, String message) async {
  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    content: Text(message),
    action: SnackBarAction(
      label: "Undo",
      onPressed: () {},
    ),
    duration: const Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

// General Alert Dialog
Future<void> generalAlertDialog(BuildContext context, String title,
    String message, bool cancelButton, String route) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(message),
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
            child: const Text(confirmHelperText),
            onPressed: () {
              Navigator.pushNamed(context, route);
            },
          ),
        ],
      );
    },
  );
}
