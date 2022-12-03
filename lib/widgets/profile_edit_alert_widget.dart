import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:flutter/material.dart';

Future<void> profileEditAlertDialog(
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                      alignment: AlignmentDirectional.center,
                      children: <Widget>[
                        Opacity(
                          opacity: 0.5,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(profilePic1),
                            foregroundColor: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt),
                          color: Colors.black,
                        ),
                      ]),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: TextEditingController(text: usernameHelperText),
                maxLength: 14,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
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
            child: const Text('Save'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
