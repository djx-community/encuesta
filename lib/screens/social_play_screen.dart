import 'package:encuesta/config/assets_path/assets_path.dart';
import 'package:encuesta/config/routes/routes.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/screens/hosting_screen.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/custom_buttons_widgets.dart';
import 'package:encuesta/widgets/bottom_app_bar_widget.dart';
import 'package:encuesta/widgets/join_room_alert_widget.dart';
import 'package:flutter/material.dart';

class SocialPlayScreen extends StatelessWidget {
  const SocialPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomAppBarWidget(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(socialPlayHelperText,
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w400)),
                const Center(
                    child: Flexible(
                        child: Image(
                            image: AssetImage(socialPlayImage), width: 375))),
                const SizedBox(height: 20),
                Flexible(
                  child: Column(
                    children: [
                      CustomButton(
                        buttonHeight: 50,
                        buttonWidth: 300,
                        onPress: () {
                          Navigator.of(context).pushNamed(hostingScreenRoute);
                        },
                        buttonText: hostRoomHelperText,
                        buttonColor: PRIMARY_COLOR,
                        buttonTextColor: textColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomOutlinedButton(
                        buttonText: joinRoomHelperText,
                        buttonTextColor: textColor,
                        onPress: () {
                          joinRoomAlertDialog(context, joinRoomHelperText,
                              true); //need to add popup for entering room credentials
                        },
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
