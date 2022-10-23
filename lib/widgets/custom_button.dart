import 'package:encuesta/screens/winning_screen.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String button_text;
  final Color button_color;
  // final BorderRadius button_border;
  // final Widget child;

  customButton({
    this.onPress,
    required this.button_text,
    required this.button_color,
    // required this.button_border,
    // required this.child
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
            color: button_color, borderRadius: BorderRadius.circular(10)),
        child: Text(
          button_text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),
        ),
      ),
    ));
  }
}
