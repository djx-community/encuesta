import 'package:flutter/material.dart';

class GreetingImageAndTextWidget extends StatelessWidget {
  final String greetingImage;
  final String greetingMessage;
  const GreetingImageAndTextWidget(
      {super.key, required this.greetingImage, required this.greetingMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: <Widget>[
          Center(child: Image.asset(greetingImage, scale: 1.0)),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 400, 0, 0),
              child: Text(
                greetingMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.fade),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
