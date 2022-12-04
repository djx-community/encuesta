import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/custom_buttons_widgets.dart';
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

//Connection lost Alert Dialog
Future<void> connectionLostAlertDialog(
    BuildContext context, String title, String message) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              const Icon(Icons.warning_amber_rounded,
                  color: Colors.amber, size: 100),
              Center(
                  child: Text(
                title,
                style: const TextStyle(fontSize: 25),
              )),
              const SizedBox(height: 10),
              Center(
                  child: Text(
                message,
                style: const TextStyle(fontSize: 20),
              )),
            ],
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                buttonColor: tertiaryColor,
                buttonText: cancelHelperText,
                buttonTextColor: textColor,
                buttonWidth: 100,
                buttonHeight: 40,
                onPress: () {Navigator.pop(context);},
              ),
              const SizedBox(width: 10),
              CustomButton(
                buttonColor: PRIMARY_COLOR,
                buttonText: tryAgainHelperText,
                buttonTextColor: textColor,
                buttonWidth: 100,
                buttonHeight: 40,
                onPress: () {},
              )
            ],
          )
        ],
      );
    },
  );
}
