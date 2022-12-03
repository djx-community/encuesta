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
            mainAxis: Axis.vertical,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                      alignment: AlignmentDirectional.center,
                      children: <Widget>[
                       const Opacity(
                          opacity: 0.7,
                          child:CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(profilePic1),
                            foregroundColor: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon:const Icon(Icons.camera_alt),
                          color: Colors.black,
                        ),
                      ]),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: TextEditingController(text: users[1]),
                maxLength: 14,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText:userNameHelperText,
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
            child: const Text(saveHelperText),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
