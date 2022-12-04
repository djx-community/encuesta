import 'package:encuesta/config/themes/themes.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final double buttonWidth;
  final double buttonHeight;
  // final BorderRadius button_border;
  // final Widget child;

  const CustomButton({
    super.key,
    this.onPress,
    required this.buttonText,
    required this.buttonTextColor,
    required this.buttonColor,
    required this.buttonWidth,
    required this.buttonHeight
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        minimumSize:  Size(buttonWidth, buttonHeight),
        backgroundColor: buttonColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: Text(buttonText, style: TextStyle(color: buttonTextColor)),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String buttonText;
  final Color buttonTextColor;

  const CustomOutlinedButton({
    super.key,
    this.onPress,
    required this.buttonText,
    required this.buttonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(300, 50),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: buttonBorderColor),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: Text(buttonText, style: TextStyle(color: buttonTextColor)),
    );
  }
}
