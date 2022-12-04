import 'package:flutter/material.dart';

Future<void> hostingRoomAlertDialog(BuildContext context, String title,
    String roomId, String password, bool cancelButton) async {
  bool _showPassword = false;
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
                controller: TextEditingController(text: roomId),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Room ID',
                ),
                enabled: false,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: TextEditingController(text: password),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        _showPassword = !_showPassword; // need to use set state
                      },
                      icon: Icon(_showPassword
                          ? Icons.visibility
                          : Icons.visibility_off)),
                ),
                obscureText: _showPassword,
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
              // save the data
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
