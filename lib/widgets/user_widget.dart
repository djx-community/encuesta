import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/profile_edit_alert_widget.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        profileEditAlertDialog(context, 'Edit Profile', true);
      },
      child: SizedBox(
        width: 200,
        child: Card(
          color: PRIMARY_COLOR,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30), right: Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(profilePic1),
              ),
              const Text(
                usernameHelperText,
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
