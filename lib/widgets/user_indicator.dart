import 'package:encuesta/config/themes/themes.dart';
import 'package:flutter/material.dart';

class UserIndicator extends StatelessWidget {
  late String user_Name;
  late dynamic user_Avatar;
  UserIndicator({
    super.key,
    required this.user_Name,
    required this.user_Avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: PRIMARY_COLOR,
            ),
            constraints: BoxConstraints(maxWidth: 200, maxHeight: 60),
            child: Row(children: [
              Container(
                padding: EdgeInsets.all(9),
                child: Text(
                  user_Name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Image.network(
                    user_Avatar,
                    height: 30,
                    width: 19,
                  )),
            ]),
          ))
    ]);
  }
}
