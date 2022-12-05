import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/hosting_room_credential_edit_alert_widget.dart';
import 'package:encuesta/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            generalSnackBar(context, "Copied to Clipboard");
            Clipboard.setData(const ClipboardData(text: userIDHelperText));
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
                        generalSnackBar(context, "Copied to Clipboard");
                        Clipboard.setData(
                            const ClipboardData(text: userIDHelperText));
                        // generalAlertDialog(context,alertHelperText,alertMessageHelperText,true);
                      },
                      icon: const Icon(
                        Icons.copy,
                        color: textColor,
                      ),
                      iconSize: 20,
                    ),
                    IconButton(
                      onPressed: () {},
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
