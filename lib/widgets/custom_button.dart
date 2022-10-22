import 'package:encuesta/screens/winning_screen.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final dynamic onPress;
  final String button_text;
  final Color button_color;
  // final Widget child;

  const customButton(
      {required this.onPress,
      required this.button_text,
      required this.button_color
      // required this.child
      });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SafeArea(
        child: Container(
            constraints: BoxConstraints(maxHeight: 50, maxWidth: 100),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    color: Colors.black, strokeAlign: StrokeAlign.outside)),
            child: customButton(
                onPress: onPress,
                button_text: button_text,
                button_color: button_color)),
      )
    ]);
  }
}
