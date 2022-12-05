import 'package:encuesta/config/assets_path/assets_path.dart';
import 'package:encuesta/config/themes/themes.dart';
import 'package:encuesta/util/helpers/text_helpers.dart';
import 'package:encuesta/widgets/custom_buttons_widgets.dart';
import 'package:flutter/material.dart';

class OfflineMessageScreen extends StatelessWidget {
  const OfflineMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
              children: [
          Container(
              padding: const EdgeInsets.only(top: 100),
              width: double.infinity,
              child: Image.asset(
                offlineImage,
                width: 300,
                height: 300,
                alignment: Alignment.center,
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Column(
              children: const <Widget>[
                Text(
                  offlineHelperText,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  offlineMessageHelperText,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: secondaryColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
              buttonWidth: 300,
              buttonHeight: 50,
              buttonText: tryAgainHelperText,
              buttonTextColor: textColor,
              buttonColor: tertiaryColor,
              onPress: () {})
              ],
            ),
        ));
  }
}
