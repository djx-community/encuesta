import 'package:clipboard/clipboard.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/hosting_room_credential_edit_alert_widget.dart';
import 'package:encuesta/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class UserIdAppCardWidget extends StatelessWidget {
  const UserIdAppCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        hostingRoomAlertDialog(
            context, 'Room Credentials', roomId, password, true);
      },
      child: SizedBox(
        width: 300,
        child: GestureDetector(
          onLongPress: () {
            FlutterClipboard.copy(userIDHelperText).then(
                (value) => generalSnackBar(context, copyToClipboardHelperText));
          },
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
                  userIDHelperText,
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        FlutterClipboard.copy(userIDHelperText).then((value) =>
                            generalSnackBar(context,
                                copyToClipboardHelperText)); //to copy the user id
                        // generalAlertDialog(context,alertHelperText,alertMessageHelperText,true);
                      },
                      icon: const Icon(
                        Icons.copy,
                        color: textColor,
                      ),
                      iconSize: 20,
                    ),
                    IconButton(
                      onPressed: () async {
                        await Share.share(
                            "${users[1]} share user id to you : $userIDHelperText"); //Share user id to someone
                      },
                      icon: const Icon(
                        Icons.share,
                        color: textColor,
                      ),
                      iconSize: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
