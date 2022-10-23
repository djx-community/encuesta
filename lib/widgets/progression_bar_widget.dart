import 'package:encuesta/config/themes/themes.dart';
import 'package:flutter/material.dart';

class ProgressionBarWidget extends StatelessWidget {
  final loadingValue;
  final String loadingText;
  const ProgressionBarWidget(
      {super.key, required this.loadingValue, required this.loadingText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                minHeight: 10,
                value: loadingValue,
                backgroundColor: progressionBarBgColor,
                valueColor: const AlwaysStoppedAnimation(Colors.blue),
              ),
            ),
            Text('${loadingValue * 100}%', style: TextStyle(fontSize: 20)),
          ],
        ),
        Text(loadingText)
      ],
    );
  }
}
