import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:flutter/material.dart';

class UserIdAppCardWidget extends StatelessWidget {
  const UserIdAppCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: PRIMARY_COLOR,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(30), right: Radius.circular(5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const CircleAvatar(radius: 27,backgroundImage: NetworkImage(profilePic1), ),
          const Text(userIDHelperText),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.copy)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
            ],
          ),
        ],
      ),
    );
  }
}
